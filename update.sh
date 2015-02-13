#!/bin/bash

hugo -b "/" --theme=herring-cove

git add --all
git commit -m "hugo $(date +%Y.%m.%d) $1"
git push
git checkout master
git rm -rf *
git checkout hugo -- public
cp -R ./public/* .
rm -rf ./public
cp index.xml rss
git add --all
git commit -m "master $(date +%Y.%m.%d) $1"
git push
git checkout hugo
