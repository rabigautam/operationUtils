#!/usr/bin/env bash

read -e -p "Enter the directory or path of directory:" dir_path
#check whether the path exist or not
if([ -d "${dir_path}" ])
then
    # if(!(find "${dir_path}" -maxdepth 0 -empty) )
    # then
    #  echo "'${dir_path}' is empty"
    # exit
    # fi
    
    #stores files in array
    fileArray=($(find $dir_path -type f))
    # get length of an array
    tLen=${#fileArray[@]}
    
    if(($tLen<1))
    then
        echo "No files found"
        exit
    fi
    
    read -e -p "Enter filename substring to keep the file and remove others:" filename_substr
    
    # use for loop read all filenames
    for (( i=0; i<${tLen}; i++ ));
    do
        FILE="${fileArray[$i]}"
        f="$(basename -- $FILE)"
        fileName_lower="${f,,}"
        case "$fileName_lower" in
            *${filename_substr}* ) ;;
            * )rm -rf ${FILE}  ;;
        esac
    done
else
    echo "'${dir_path}'  directory or path doesn't exist"
    exit
fi