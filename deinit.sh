#!/bin/sh
#

# error exit function
function error_exit
{
	echo "$1" 1>&2
	exit 1
}

# if 'Scripts' directory exist remove the sub-module
if [ -d Scripts ]; then 
	git submodule deinit Scripts;
	if [ "$?" = "0" ]; then
		git rm Scripts;
	else
		git submodule deinit -f Scripts;
		if [ "$?" = "0" ]; then
			rm -rf Scripts;
		fi;
	fi;
	if [ "$?" = "0" ]; then
		rm -rf '.git/modules/Scripts';
	else
		error_exit "Cannot remove sub-module 'Scripts'";
	fi;
fi;

