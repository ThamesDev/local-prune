#!/bin/bash
cd $PWD || exit
git checkout "$1" || printf "\nlocal-prune report:\n\nThis error message means that either\n1. you ran this command outside a git repository, or\n2. you didn't specify the primary branch. local-prune must be run in the format\n$ local-prune [main-branch]\n where [main-branch] is your repo's primary branch. It may be called \"main\", \"primary\", or if you're looking at an old repo, \"master\". It can be found by typing\n$ git branch\n into the terminal. Execute the command again with this argument.\n"; exit
git fetch -p || printf "\nlocal-prune report:\n\nThis message means that you haven't specified your origin/upstream repo! Do that, then run this command again.\n"; exit
git pull
git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d || printf "\nlocal-prune report:\n\nThis means that there are no deleted remote branches which local branches were tracking.\n"; exit
