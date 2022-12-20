#!/bin/sh
today=$(date +'%Y-%m-%d 00:00')

git pull origin main

logs="git log --since='${today}'"
echo "\n============== $(date) =====================" >> log.txt
eval $logs >> log.txt

eval "git config --global user.email $USER_EMAIL"
eval "git config --global user.name $USERNAME"
git branch -M main


if [ "$NUM" = "" ] || [ "$NUM " -lt 0 ]; then
    NUM=10
fi

today=$(date +'%Y-%m-%d %k:%M:%S')

for i in $( seq 1 $NUM )
do
    printf "$i .. " >> log.txt
    git add .
    eval "git commit -m 'Automatic log - $today'"
    git push origin main
done


