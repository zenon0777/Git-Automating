#! /bin/sh

read -p {"your repo"} repo
read -p {"your branche"} branche
read -p {"your message"} message
read -p "your files "  files

git init
git checkout $branche
git add $files
git commit -m "$message"
git remote add $repo git@github.com:DAIFI-A/$repo.git
git pull
git push -u $repo $branche
