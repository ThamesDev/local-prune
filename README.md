# local-prune
## About
This is a script created to prune any local branches which are tracking deleted remote branches. It annoyed me that I had to do this manually, so I made this.
## Installation
I will add this later
## Usage
Once you have pushed your changes to the remote branch, merged into `main` (or whatever your primary branch is called) and deleted the other branch, run
```
example@PC:/your/repo/name$ local-prune "Name of your primary branch"
```
For example, if the name of your primary branch is `main`, you would type
```
example@PC:/your/repo/name$ local-prune main
```
This is to ensure that git checks you out to your primary branch.
## What does it do behind the scenes?
Check out the source code, but TL;DR:
- checks you out to whatever branch you told it to
- git fetches
- git pulls
- removes any remote tracking branches for which the remote branch has been deleted.
It really is a very simple script!
