#!/bin/bash

# Simple repo-creator for my own projects

# Editable settings
GIT_HOST="git.nexo-it.pl"
GIT_USER="git"

GIT_REPOS_DIR="/git/"

CURDIR=$(pwd)
NAME=$1

echo "Creating repo: $NAME.."
echo "Creating remote bare repo.."
ssh $GIT_USER@$GIT_HOST "cd $GIT_REPOS_DIR; mkdir $NAME.git; cd $NAME.git; git init --bare; exit;"
echo "Creating local repo.."
git init
git remote add origin "$GIT_USER@$GIT_HOST:$GIT_REPOS_DIR$NAME.git"
echo "Creating initial commit.."
git add .
git commit -m "Initial commit for repo: $NAME"
git push origin master
echo "\n\nRepo created successfully\n"
