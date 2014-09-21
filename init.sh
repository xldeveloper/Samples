#!/bin/sh
#
if [ ! -d Scripts ]; then 
	git submodule add https://github.com/xldeveloper/Scripts.git Scripts; 
	git submodule init; 
	git submodule update; 
fi;
git submodule update; 
