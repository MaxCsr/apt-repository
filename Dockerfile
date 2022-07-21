FROM nginx:alpine-perl

ADD scripts/generate-release.sh /usr/local/bin/generate-release.sh
ADD scripts/100-init-apt-repository.sh /docker-entrypoint.d/100-init-apt-repository.sh
RUN chmod 775 /usr/local/bin/generate-release.sh /docker-entrypoint.d/100-init-apt-repository.sh

RUN apk add --update-cache \
    dpkg \
    dpkg-dev \
    gnupg \
  && rm -rf /var/cache/apk/*
