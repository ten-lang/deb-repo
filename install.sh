#!/bin/sh
add-apt-repository "deb https://raw.githubusercontent.com/ten-lang/deb-repo/master/ /"
wget -O - "https://raw.githubusercontent.com/ten-lang/deb-repo/master/ten-lang.pub" | apt-key add -
apt update

