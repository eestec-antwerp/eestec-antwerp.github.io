#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
echo -e "\033[1;32mInsert your commit message as argument to this script.\033[0m"

# delete website for stale content
rm -rf public/

# regenerate website
hugo

# prepare rss
cp public/index.xml public/rss

# add changes to git
git add public

# prepare git commit message
msg="rebuilding site $(date +"%Y/%m/%d %H:%M") $1"
if [ $# -eq 1 ]
    then msg="$1"
fi

# quietly commit
git commit -qm "$msg"

# push source and build repos
git stree push website
