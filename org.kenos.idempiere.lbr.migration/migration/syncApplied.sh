#!/bin/sh

#	Check Parameters
if [ -z "$1" -o -z "$2" -o -z "$3" ]; then
   echo "Usage: $0 MIGRATION-FOLDER DATABASE USER [PG PARAMS]"
   exit 0
fi

#	Adjust the path to psql command
if [ -z "$PSQL" ]; then
	PSQL=psql
fi

#	Variables
DATABASE=${2}
USER=${3}
ADDPG=${4}   # i.e. "-h localhost -p 5432"
MIGRATIONDIR=${1}
MSGERROR=""
APPLIED=N

#	Password prompt
echo
echo "========================================="
echo " iDempiere Synchronization Script Tool"
echo
echo " Version modified by Kenos."
echo " Ricardo Santana <rsantana@kenos.com.br>"
echo "========================================="
echo
echo "        Database: ${DATABASE}"
echo "            User: ${USER}"
echo "       PG Params: ${ADDPG}"
echo "Migration Folder: ${MIGRATIONDIR}"
echo
read -s -p "Enter Password: " pass
echo

#	Password
PGPASSWORD=$pass

#	Go to working dir
cd $MIGRATIONDIR

#	Retrieve applied scripts
psql -d $DATABASE -U $USER $ADDPG -q -t -c "SELECT Name FROM AD_MigrationScript" | sed -e 's:^ ::' | grep -v '^$' | sort > /tmp/lisDB.txt

#	Clean the list of available scripts
> /tmp/lisFS.txt

#	Check all available scripts
while read FOLDER;
do
    if [ -d ${FOLDER}/postgresql ]
    then
        cd ${FOLDER}/postgresql
        find . -name '*.sql' -type f -exec basename {} \; | sort | sed ':a;N;$!ba;s/\n/ /g' >> /tmp/lisFS.txt
        cd ../..
    fi
done < VERSIONS

#	Sort by file name
sort -u -o /tmp/lisFS.txt /tmp/lisFS.txt
sort -u -o /tmp/lisDB.txt /tmp/lisDB.txt
echo

APPLIED=N

#	Confirm scripts to be applied
for i in `comm -13 /tmp/lisDB.txt /tmp/lisFS.txt`
do
	if [ x$APPLIED = xN ]
	then
		echo "The script(s) below will be applied:"
		echo
	fi
    echo "====> $i"
    APPLIED=Y
done

#	Confirm before apply
if [ x$APPLIED = xY ]
then
	echo
	echo "Press enter to continue ..."
	read in
fi

#	Prepare to apply
APPLIED=N

#	Execute the scripts
for i in `comm -13 /tmp/lisDB.txt /tmp/lisFS.txt`
do
    SCRIPT=`find . -name "$i" -print | fgrep -v /oracle/`
    OUTFILE=/tmp/`basename "$i" .sql`.out
    psql -d $DATABASE -U $USER $ADDPG -f "$SCRIPT" 2>&1 | tee "$OUTFILE"
    if fgrep "ERROR:
FATAL:" "$OUTFILE" > /dev/null 2>&1
    then
        MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
    fi
    APPLIED=Y
done

#	Execute processes post migration
if [ x$APPLIED = xY ]
then
    for i in processes_post_migration/postgresql/*.sql
    do
        OUTFILE=/tmp/`basename "$i" .sql`.out
        psql -d $DATABASE -U $USER $ADDPG -f "$i" 2>&1 | tee "$OUTFILE"
        if fgrep "ERROR:
FATAL:" "$OUTFILE" > /dev/null 2>&1
        then
            MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
        fi
    done
else
    echo "Database is up to date, no scripts to apply"
    echo
fi

#	Show errors
if [ -n "$MSGERROR" ]
then
    echo "$MSGERROR"
fi
# syncApplied.sh