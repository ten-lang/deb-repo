#!/bin/sh
add-apt-repository "deb https://raw.githubusercontent.com/ten-lang/deb-repo/master/ten-lang.repo /"
wget -O - /home/raystubbs/deb-repo/gen/release.sh | apt-key add -
apt update

