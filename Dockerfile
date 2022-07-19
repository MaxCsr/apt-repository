FROM nginx:alpine-perl

ADD scripts/generate-release.sh /usr/local/bin/generate-release.sh

RUN apk add --update-cache \
    dpkg \
    dpkg-dev \
    gnupg \
  && rm -rf /var/cache/apk/*
