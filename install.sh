#!/bin/sh
add-apt-repository "deb https://raw.githubusercontent.com/ten-lang/deb-repo/master/ /"
wget -O - /home/raystubbs/deb-repo/ten-lang.pub | apt-key add -
apt update

