#!/bin/sh

# script to apply new migration scripts to oracle xe 
# converted to ora from syncApplied.sh by Carlos Ruiz 
# taking stuff also from migrate_oracle.sh
# 
# Contributed by Dirk Niemeyer - a42niem

# Change the following to your needs

# for oracle client portable
#export LD_LIBRARY_PATH=/mnt/data/programe/oracleDbClient/instantclient_12_1
#export PATH=$PATH:/mnt/data/programe/oracleDbClient/instantclient_12_1
MIGRATIONDIR=/home/carlos/hgAdempiere/localosgi/migration
HOST=localhost
DATABASE=xe
USER=idempiere
PASS=mypass

MSGERROR=""
APPLIED=N
cd $MIGRATIONDIR

echo "set heading off
set feedback off
set pagesize 0
set term off
set echo off
select name from ad_migrationscript;" | sqlplus -S $USER/$PASS@$HOST/$DATABASE | sed -e 's:^ ::' | grep -v '^$' | sort > /tmp/lisDB.txt

> /tmp/lisFS.txt
for FOLDER in i2.1 i2.1z
do
    if [ -d ${FOLDER}/oracle ]
    then
        cd ${FOLDER}/oracle
        ls *.sql | sort >> /tmp/lisFS.txt
        cd ../..
    fi
done
sort -o /tmp/lisFS.txt /tmp/lisFS.txt
sort -o /tmp/lisDB.txt /tmp/lisDB.txt

MSGERROR=""
APPLIED=N
for i in `comm -13 /tmp/lisDB.txt /tmp/lisFS.txt`
do
    SCRIPT=`find . -name "$i" -print | fgrep -v /postgresql/`
    OUTFILE=/tmp/`basename "$i" .sql`_or.out
    cat "$SCRIPT" | sqlplus $USER/$PASS@$HOST/$DATABASE 2>&1 | tee "$OUTFILE"
    if egrep "^(ORA-[0-9]+:|TNS-|PLS-)" "$OUTFILE" > /dev/null 2>&1
    then
        MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
    else
        rm "$OUTFILE"
    fi
    APPLIED=Y
    sleep 5
done
if [ x$APPLIED = xY ]
then
    for i in processes_post_migration/oracle/*.sql
    do
        OUTFILE=/tmp/`basename "$i" .sql`_or.out
	cat "$i" | sqlplus $USER/$PASS@$HOST/$DATABASE 2>&1 | tee "$OUTFILE"
        sleep 5
        if egrep "^(ORA-[0-9]+:|TNS-|PLS-)" "$OUTFILE" > /dev/null 2>&1
        then
            MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
        else
            rm "$OUTFILE"
        fi
        sleep 1
    done
else
    echo "Database is up to date, no scripts to apply"
fi
if [ -n "$MSGERROR" ]
then
    echo "$MSGERROR"
    exit 1
fi