#!/bin/sh
wget -q -O - "https://raw.githubusercontent.com/ten-lang/deb-repo/master/KEY.gpg" | apt-key add -
add-apt-repository "deb https://raw.githubusercontent.com/ten-lang/deb-repo/master/ /"
apt update

