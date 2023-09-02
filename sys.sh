#! /bin/bash


 dir_path=$(pwd)
#dir_path=bin

# if([ -d "${dir_path}" ])
# then
    # if(!(find "${dir_path}" -maxdepth 0 -empty) )
    # then
    #  echo "'${dir_path}' is empty"
    # exit
    # fi
    
    #stores files in array
    fileArray=($(find $dir_path -type f -name "*.sh"))
    # get length of an array
    tLen=${#fileArray[@]}
    
    if(($tLen<1))
    then
        echo "No files found"
        exit
    fi

       # use for loop read all filenames
    for (( i=0; i<${tLen}; i++ ));
    do
        FILE="${fileArray[$i]}"
        filename="$(basename -- $FILE)"
        filename_without_ext=${filename%.*}
        echo $filename
        chmod +x $filename
        ln -s $filename $filename_without_ext -f
        echo $filename_without_ext
    done
    
# else
#     echo "'${dir_path}'  directory or path doesn't exist"
#     exit
# fi
