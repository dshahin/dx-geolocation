#!/bin/bash

if [ $# -lt 1 ]
then
    echo Usage: branch.sh branchname
    exit
fi

git checkout -b $1;
sfdx force:org:create -s -f config/project-scratch-def.json -a $1;
sfdx force:source:push -u $1;
sfdx force:user:permset:assign -n Geolocation;
sfdx force:data:tree:import --sobjecttreefiles data/Account-Contact.json -u $1;
sfdx force:org:open -u $1;


