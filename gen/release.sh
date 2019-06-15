#! /bin/sh
cd ..
echo "Suite: stable" > Release
echo "Date:  $(date -R -u)" >> Release
echo "Valid-Until: $(date -d'+ 5 years') -R -u" >> Release
echo "Signed-By: $(cat ten-lang.pub | gpg --fingerprint | sed '4q;d' | sed -E 's/^ *//g' | sed -E 's/ +/, /g')" >> Release
echo "SHA256:" >> Release

for FILE in *.deb *.ddeb
do
    echo $(cat $FILE | sha256sum | sed 's/ .*//') $(ls -l $FILE | cut -d ' ' -f5) $FILE >> Release
done


rm -f InRelease
gpg --clearsign -o InRelease Release
mini-dinstall -c .mini-dinstall.conf  .

