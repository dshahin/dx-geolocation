# SFDX  App

## Dev, Build and Test
* sfdx force:org:create -s -f config/project-scratch-def.json -a Geolocation;
* sfdx force:source:push;
* sfdx force:user:permset:assign -n Geolocation
* sfdx force:data:tree:import --sobjecttreefiles data/Account.json;
* sfdx force:org:open;

## Resources


## Description of Files and Directories


## Issues


