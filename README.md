# local-prune
## About
This is a script created to prune any local branches which are tracking deleted remote branches. It annoyed me that I had to do this manually, so I made this. THis script will only run in bash, but the source code is available here, and it should be fairly trivial for a user to modify it for whatever shel they use.
## Installation
**WARNING: designed for Debian-based systems. If you use a non-debian based distro, such as Arch-based, use the appropriate package manager.**
### Prerequisites
Ensure that you have the necessary dependencies installed. This can be done with the following commands:
```
sudo apt install git
sudo apt install gcc
sudo apt install dpkg
sudo apt install software-properties-common
```
### The easy way (Ubuntu, x86\_64 architecture)
In the terminal, type
```
sudo add-apt-repository ppa:thamesdev/thamesware
sudo apt update
sudo apt install local-prune
```
### If you do not wish to add the PPA, and are on an x86\_64/amd64 Debian-based system
1. Download the `.deb` release from this repository to your computer. You may download it to any directory you wish.

2. Run
```
sudo dpkg -i local-prune_1.0.1_amd64.deb
```
replacing `local-prune_1.0.1_amd64.deb` with the name of the file you have downloaded.

3. Test it in a repo!
### For non Debian-based systems, other architectures, or both
**WARNING: this package was designed to work on Debian-based systems with an x86_64/amd64 architecture. Install at your own risk.**
1. Download the the latest `local-prune_[version]_source.tar.gz` release from this repository

2. Run the following commands, while in the directory containing the `.tar.gz` file, replacing [version] with the version of the file you downloaded. Do not copy-paste the commands directly into the shell without changing this.
```
tar -xvzf local-prune_[version]_source.tar.gz
cd local-prune_[version]_source
make
sudo make install
```

3. You may now delete the `.tar.gz` file and remove the directory if you wish.

4. Test it in a repo!
## Usage
Once you have pushed your changes to the remote branch, merged into `main` (or whatever your primary branch is called) and deleted the other remote branch from GitHub, run
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
## Uninstallation
The program can be easily uninstalled with
```
sudo apt remove local-prune
```
