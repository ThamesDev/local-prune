#!/bin/bash
cd $PWD
git checkout $1
git fetch -p
git pull
git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
