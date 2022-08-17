#!/bin/sh
today=$(date +'%Y-%m-%d 00:00')
logs="git log --since='${today}'"
echo "\n============== $(date) =====================\n\n" >> log.txt
eval $logs >> log.txt

git add .
eval "git commit -m 'Automatic log - $today'"
git push origin main