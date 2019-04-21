#!/bin/bash

echo "building site...sit back and relax...."

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
git checkout jekyll-dev
bundle exec jekyll build
git add .
git commit -m "dev build at ${timestamp}"
git push
git checkout master
git rm -rf *
git checkout jekyll-dev -- _site
cp -r _site/* .
git add .
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
git commit -m "production build at ${timestamp}"
git push

echo "done building site..."
