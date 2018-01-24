#!/bin/bash
echo #1
if [ $# -lt 1 ]
then
    echo Usage: switch.sh branchname
    exit
fi

git checkout $1;
sfdx force:data:tree:import --sobjecttreefiles data/Account-Contact.json -u $1;
sfdx force:org:open -u $1;


