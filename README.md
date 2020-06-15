# pkgmany / debmany
Creates a .deb package based on the source code or just downloads it from the URL

## -- "I want to offer X package for packaging"
**To do this, go to "Issues" tab and create an issue with the title starting with "[Package offer]"**

## -- "Where can I find example of a DEBBUILD?"
**file ```example.debbuild``` \
You will need to rename it to ```DEBBUILD```**

## -- "Where can I find a detailed DEBBUILD writing guide?"
**see Wiki page**

# How to install and use this?
```
./install.sh || ./install.sh /usr/bin
debmany --help
```

# How to remove this?
```
./install.sh remove || ./install.sh remove /usr/bin
```

## Dependencies:
```
coreutils
sed
bash
gdebi
sudo
git
apt
curl "or" wget
```

## Target distros:
Linux Mint 19.3 \
Ubuntu 20.04

## -- "I want to become an contributor"
**Message me on Telegram (@heveat) and tell WHY you want to become an contributor**

# Attention
This script is in early alpha. There may be some bugs. Also, if this project grows large, I will completely rewrite the code and invite other developers. But you can already help by messaging me in Telegram. And yes, this script is not of the best quality, but I'm trying to make things easier with my knowledge. Thank you.

# Variables:
```
maintainer -- package maintainer
author -- author of package
year -- copyright year
debpri -- Priority
debsec -- Section
debrec -- Reccomend
debsug -- Suggests
debcon -- Conflicts
debbrk -- Breaks
debprv -- Provides
debrep -- Replaces
debpkg -- An indicator that to build the package it is enough to download the .deb from the official site
srcdir -- Directory with downloaded source
pkgdir -- Directory with future DEBIAN directory and binaries
```
```
makedepends=('one' 'two' 'three') -- dependencies for building package
sha256sums=('754545...') -- sha256sum for checking hash of downloaded file
sources=('wget:ascii.tgz:https://source.com/tar.rgz -- URL links to sources files/directories
manydeps=('wifiman') -- dependencies from pkgmany-storage repository
``` 
