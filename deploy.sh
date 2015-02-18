#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
echo -e "\033[1;32mInsert your commit message as argument to this script.\033[0m"

# recreate website
hugo

# go inside (re)generated public folder
cd public

# prepare rss
cp index.xml rss

# add changes to git
git add -A

# prepare git commit message
msg="rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi

# quietly commit if success
git commit -qm "$msg"

# push source and build repos
git push -q origin master

# and finally return
cd ..
