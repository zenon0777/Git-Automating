#! /bin/sh

read -p {"your repo"} repo
read -p {"your branche"} branche
read -p {"your message"} message

git init
git checkout -b $branche
git add .
git commit -m "$message"
git remote add $repo git@github.com:DAIFI-A/$repo.git
git push -u $repo $branche
