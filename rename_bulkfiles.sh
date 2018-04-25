#!/usr/bin/ksh
#######################################################################################################
#
# NAME:        rename_bulkfiles.sh
#
# PARAMETERS:  None
#
# DESCRIPTION: This script will rename all the File extensions from .txt to .dat in a directory
#
# FUNCTIONS IN THIS FILE:
#
# MODIFICATION HISTORY
# NAME                 DATE         DESCRIPTION
# ===================  ==========   ===================================================================
#
#######################################################################################################

#######################################################################################################
## Navigate to file location

data_dir=/home/username/data/in
#echo $data_dir

cd $data_dir
chmod 777 *.txt

####Check if the file extension exists
count=`ls -l *.txt 2>/dev/null | wc -l`
if [ $count != 0 ]; then
echo "Renaming all files extensions from .txt to .dat"
else
echo "Files with .txt extension does not exist"
fi


####Change file extension####
if [ $count != 0 ]; then
	for file in *.txt
	do
		##echo mv -- 
		mv $file $(expr $file : '\(.*\)\.txt').dat
	done
fi
#######################################################################################################
