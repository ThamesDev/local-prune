# local-prune
## About
This is a script created to prune any local branches which are tracking deleted remote branches. It annoyed me that I had to do this manually, so I made this. THis script will only run in bash, but n the interests of preserving its development, the `.sh` source code is available here from before it was converted to c, and it should be fairly trivial for a user to modify it for whatever shell they use.
## Installation
**WARNING: designed for Debian-based systems. If you use a non-Debian based distro, such as Arch-based, use the appropriate package manager.**
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

2. Replacing [version] with the version of the file you downloaded, run
```
sudo dpkg -i local-prune_[version]_amd64.deb
```
replacing `local-prune_[version]_amd64.deb` with the name of the file you have downloaded.

3. Test it in a repo!
### For non Debian-based systems, other architectures, or both
**WARNING: this package was designed to work on Debian-based systems with an x86_64/amd64 architecture. Install at your own risk.**
1. Clone this repository into your working directory using the command
```
git clone https://github.com/ThamesDev/local-prune.git
```

2. Run
```
cd local-prune
make
sudo make install
```

3. If you wish, you may now delete the folder using
```
sudo rm -rf local-prune/
```
from its parent directory, but this is not necessary.

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
However it was installed, the program can be easily uninstalled with
```
sudo apt remove local-prune
```
