#! /bin/sh
PRO=$1
URL=https://github.com/ten-lang/$PRO/
TAG=$(git ls-remote --tags $URL | awk '{ print $2 }' | sort -r | awk 'FNR == 1' | sed 's/.*\///')
VER=$(echo $TAG | sed 's/v//')
GEN=$(pwd)
DIR=$GEN/build/$PRO-$VER/$PRO-$VER/
SRC=$GEN/build/$PRO-$VER/$PRO-$VER.tar.gz
DEB=$GEN/debian/$PRO

rm -rf "$GEN/build/$PRO-$VER"
mkdir -p "$GEN/build/$PRO-$VER"
wget "https://github.com/ten-lang/$PRO/archive/$TAG.tar.gz" -O "$SRC" 
cd "$GEN/build/$PRO-$VER"

tar -xvzf $SRC
cd $DIR
dh_make $(cat $DEB/dh_make_args.txt) -f $SRC -y
rm -f debian/manpage.*

cp -f "$DEB"/copy/* debian/
debuild

