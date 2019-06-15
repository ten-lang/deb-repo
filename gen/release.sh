#! /bin/sh
cd ..
rm -f Packages.gz
rm -f InRelease
rm -f Release.gpg
rm -f KEY.gpg

gpg --output KEY.gpg --armor --export -a ten-lang
apt-ftparchive release . > Release
apt-ftparchive packages . > Packages

gzip -k -f Packages

gpg --default-key ten-lang -abs -o Release.gpg Release
gpg --default-key ten-lang --clearsign -o InRelease Release

