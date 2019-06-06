#!/bin/bash

configure () {
	# Target file
	TARGET_FILE="org.kenos.idempiere.lbr.p2.targetplatform/org.kenos.idempiere.lbr.p2.targetplatform.target"
	echo

	# Ask for iDempiere folder
	while true; do
	read -e -p "Select the absolute location of iDempiere project [$PWD/../iDempiere6.2]: " IDEMPIERE_FOLDER
	case $IDEMPIERE_FOLDER in
		"" ) if [ ! -f "$PWD/../iDempiere6.2/org.idempiere.parent/pom.xml" ]; then echo "Error:	File pom.xml not found => $IDEMPIERE_FOLDER/org.idempiere.parent/pom.xml"; else IDEMPIERE_FOLDER="$PWD/../iDempiere6.2"; break; fi;;
		* ) if [ ! -f "$IDEMPIERE_FOLDER/org.idempiere.parent/pom.xml" ]; then echo "Error:	File pom.xml not found => $IDEMPIERE_FOLDER/org.idempiere.parent/pom.xml"; else break; fi;;
	esac
	done
	
	if [[ ! $IDEMPIERE_FOLDER == \/* ]]
	then
		echo
		echo "ERROR: Path must be absolute from root /, do not use ~, ./, or ../"
		echo
		exit 1
	fi
	
	# Update target
	echo
	echo "Updating target platform ... done"
	CURRENT_DIR="$(echo $IDEMPIERE_FOLDER | sed 's/\//\\\//g' | sed 's/ /\\ /g')"
	COMMAND="sed 's/<repository location=\"\${IDEMPIERE-FOLDER}\/org\.idempiere\.p2\/target\/repository\"\/>/<repository location=\"file:\/\/$CURRENT_DIR\/org\.idempiere\.p2\/target\/repository\"\/>/g' $TARGET_FILE.template > $TARGET_FILE"
	
	# Change path
	eval $COMMAND
	
	common_part=$PWD
	back=
	while [ "${IDEMPIERE_FOLDER#$common_part}" = "${IDEMPIERE_FOLDER}" ]; do
	  common_part=$(dirname $common_part)
	  back="../${back}"
	done
	
	echo
	echo "Updating pom.xml ... done"
	CURRENT_DIR="$(echo ${back}${IDEMPIERE_FOLDER#$common_part/} | sed 's/\//\\\//g' | sed 's/ /\\ /g')"
	COMMAND="sed 's/<relativePath>.*\/org\.idempiere\.parent\/pom\.xml<\/relativePath>/<relativePath>$CURRENT_DIR\/org\.idempiere\.parent\/pom\.xml<\/relativePath>/g' pom.xml.template > pom.xml"
	
	# Change path on pom.xml
	eval $COMMAND
	echo
}

build () {
	mvn verify -Didempiere.target=org.kenos.idempiere.lbr.p2.targetplatform $*
}

clear

echo ===================================
echo	 Build Localization Brazil
echo	 Created By Ricardo Santana
echo	 \(www.kenos.com.br\)
echo ===================================
echo 

# Ask for iDempiere folder
while true; do
read -t 20 -e -p "Configure iDempiere folder on pom.xml and target-plarform? [N]: " yn
case $yn in
    ""  ) build $*; break;;
	[Yy]* ) configure; build $*; break;;
	[Nn]* ) build $*; break;;
	* ) echo "Please select a valid option. Type Y or N.";;
esac
done

exit 0