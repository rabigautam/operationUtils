#!/bin/bash
git init


 FILE=$(pwd)/'.gitignore'
    if [ ! -f "$FILE" ]; then
       $cat>.gitignore
    fi

git add .

git commit -m "Initialize to repository"

git remote add origin $1
# alias.current=push -u origin HEAD
git current

