#!/usr/bin/env sh

gpg --batch --yes --output /usr/share/nginx/html/KEY.gpg --armor --export slfi-delivery-toolkit01-dev
mkdir -p /usr/share/nginx/html/dists/
for source in /usr/share/nginx/html/dists/*/; do
    cd "$source" || exit
    dpkg-scanpackages -m . > Packages
    gzip -k -f Packages
    generate-release.sh > Release
    gpg --batch --yes --default-key slfi-delivery-toolkit01-dev -o InRelease --clearsign -abs Release
    gpg --batch --yes --default-key slfi-delivery-toolkit01-dev -o Release.gpg -abs Release
done
