#/bin/bash
OLD_VERSION=0.2.8
NEW_VERSION=0.3.0
git mv Imap-ACL-Extension-$OLD_VERSION.xpi Imap-ACL-Extension-$NEW_VERSION.xpi
sed -i "s/$OLD_VERSION/$NEW_VERSION/" ../src/chrome/content/about.xul
sed -i "s/$OLD_VERSION/$NEW_VERSION/" ../src/chrome/content/overlay.js
sed -i 's/"version": "$OLD_VERSION"/"version": "$NEW_VERSION"/' ../src/manifest.json
sed -i "s/$OLD_VERSION/$NEW_VERSION/" ./build.sh
