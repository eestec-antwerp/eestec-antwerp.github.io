#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
echo -e "Insert your commit message as argument to this script."

# recreate website
hugo --theme=herring-cove

# go inside (re)generated public folder
cd public

# make sure rss works
cp index.xml rss

# add changes to git
git add -A

# git commit with default message or script argument
msg="rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# push source and build repos
git push origin master

# and finally return
cd ..
