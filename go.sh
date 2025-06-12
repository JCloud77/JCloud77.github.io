#!/bin/bash

hexo clean && hexo g
git add .
git commit -m "$1"
git branch -M main
git remote add origin git@github.com:JCloud77/JCloud77.github.io.git
git push -u --force origin main
git remote remove origin
