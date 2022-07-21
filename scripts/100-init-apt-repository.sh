#!/usr/bin/env sh

gpg --batch --yes --output /usr/share/nginx/html/KEY.gpg --armor --export slfi-delivery-toolkit01-dev
(cd /usr/share/nginx/html; dpkg-scanpackages -m . > /usr/share/nginx/html/Packages)
gzip -k -f /usr/share/nginx/html/Packages
generate-release.sh > /usr/share/nginx/html/Release
gpg --batch --yes --default-key slfi-delivery-toolkit01-dev -o /usr/share/nginx/html/InRelease --clearsign -abs /usr/share/nginx/html/Release
gpg --batch --yes --default-key slfi-delivery-toolkit01-dev -o /usr/share/nginx/html/Release.gpg -abs /usr/share/nginx/html/Release