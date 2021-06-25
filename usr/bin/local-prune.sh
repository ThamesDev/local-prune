#!/bin/bash
cd $PWD || exit
git checkout "$1" || echo "Command failed: it looks like you didn't specify the primary branch. local-prune must be run in the format\n$ local-prune [main-branch]\n where [main-branch is your repo's primary branch. It may be called \"main\", \"primary\", or if you're looking at an old repo, \"master\". It can be found by typing\n$ git branch\n into the terminal. Execute the command again with this argument."; exit
git fetch -p || echo "It looks like you haven't specified your origin/upstream repo! Do that, then run this command again."; exit
git pull
git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d || echo "Command failed: it looks like there are no deleted remote branches which local branches were tracking."; exit
