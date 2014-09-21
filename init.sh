#!/bin/sh
#

# TODO check if cleansed git local repo (to avoid to commit undesired files with the submodules)
if [ ! -d Scripts ]; then 
	git submodule add https://github.com/xldeveloper/Scripts.git Scripts; 
	git commit -m "Added 'Scripts' git sub-module"
fi;
#check if '.gitmodules' file exist (!0)
gitmodulesfile=$(ls -a '.gitmodules' | sed -e "/\.$/d" | wc -l);
if [ ! $gitmodulesfile -eq 0 ]; then
	git submodule init; 
	git submodule update; 
fi;

git submodule update; 
