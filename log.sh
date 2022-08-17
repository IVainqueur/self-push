#!/bin/sh
today=$(date +'%Y-%m-%d 00:00')
logs="git log --since='${today}'"
echo "\n============== $(date) =====================\n\n" >> log.txt
eval $logs >> log.txt

git config --global user.email "ishimvainqueur@gmail.com"
git config --global user.name "IVainqueur"

git add .
eval "git commit -m 'Automatic log - $today'"
git branch -M main
git push origin main
