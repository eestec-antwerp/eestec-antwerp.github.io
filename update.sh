#!/bin/bash

git checkout master
rm -rf *
git checkout hugo -- public
cp -R ./public/* .
rm -rf ./public
git add --all
git commit -m '$(date +%Y.%m.%d) %1'
git push
git checkout hugo
