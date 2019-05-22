#!/bin/bash

# Current folder, with escaped characters
TARGET_FILE="org.kenos.idempiere.lbr.p2.targetplatform/org.kenos.idempiere.lbr.p2.targetplatform.target"

if [ -f "$TARGET_FILE.orig" ]
then
	echo "Backup exists"
else
	echo "Creating backup file"
	cp "$TARGET_FILE" "$TARGET_FILE.orig"
fi

echo "Updating target platform with current folder"

CURRENT_DIR="$(pwd | sed 's/\//\\\//g' | sed 's/ /\\ /g')"
COMMAND="sed 's/<repository location=\"file:\/\/\/.*iDempiere6\.2\/org\.idempiere\.p2\/target\/repository\"\/>/<repository location=\"file:\/\/$CURRENT_DIR\/..\/iDempiere6\.2\/org\.idempiere\.p2\/target\/repository\"\/>/g' $TARGET_FILE.orig > $TARGET_FILE"

# Change path
eval $COMMAND

echo "Building with maven"
mvn verify -Didempiere.target=org.kenos.idempiere.lbr.p2.targetplatform $*