#! /bin/sh
cd ..
gpg --output KEY.gpg --armor --export -a ten-lang
apt-ftparchive release . > Release
apt-ftparchive packages . > Packages

rm -f Packages.gz
rm -f InRelease
rm -f Release.gpg

gzip -k -f Packages

gpg --default-key ten-lang -abs -o Release.gpg Release
gpg --default-key ten-lang --clearsign -o InRelease Release

