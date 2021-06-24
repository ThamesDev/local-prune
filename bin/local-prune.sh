#!/bin/bash
cd $PWD
git checkout $1
git branch -vv | awk '/: gone]/{print $2}' | xargs git branch -d
