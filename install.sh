#!/bin/sh
wget -O - "https://raw.githubusercontent.com/ten-lang/deb-repo/master/ten-lang.pub" | apt-key add -
add-apt-repository "deb https://raw.githubusercontent.com/ten-lang/deb-repo/master/ /"
apt update

