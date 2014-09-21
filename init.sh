#!/bin/sh
#

# TODO check if cleansed git local repo (to avoid to commit undesired files with the submodules)
if [ ! -d Scripts ]; then 
	git submodule add https://github.com/xldeveloper/Scripts.git Scripts; 
	git submodule init; 
	git submodule update; 
	git commit -m "Added 'Scripts' git sub-module"
fi;
git submodule update; 
