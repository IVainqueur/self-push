#!/bin/sh
today=$(date +'%Y-%m-%d 00:00')
logs="git log --since='${today}'"
echo "\n============== $(date) =====================\n\n" >> log.txt
eval $logs >> log.txt

git config --global user.email "ishimvainqueur@gmail.com"
git config --global user.name "IVainqueur"
git branch -M main

if [ "$NUM" = "" ] || [ "$NUM " -lt 0 ]; then
    NUM=10
fi

today=$(date +'%Y-%m-%d %k:%M:%S')

for i in $( seq 1 $NUM )
do
    echo "$i .. " >> log.txt
    git add .
    eval "git commit -m 'Automatic log - $today'"
    git push origin main
done


