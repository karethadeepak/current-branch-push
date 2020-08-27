#!/bin/bash -e

echo "========================================="
echo -e "This is a shell script for commit on \e[5m\e[32;1mGIT\e[0m\e[25m."
echo "========================================="

branchName="$(git rev-parse --abbrev-ref HEAD)"
echo -e "CURRENT BRANCH IS \e[32;1m${branchName}\e[0m."

read -p "Commit Description: " commit_message

echo -e "\e[32;1mgit add .\e[0m"
git add .

echo -e "\e[32;1mgit commit -m \""$commit_message"\"\e[0m"
git commit -m "$commit_message"

echo -e "\e[32;1mgit push\e[0m"
git push

notify-send -t 10000 -i face-cool 'Git' "Commit Done In ${branchName} Branch."

echo "========================================="
echo -e "               Commit \e[5m\e[32;1mDONE\e[0m\e[25m.              "
echo "========================================="

