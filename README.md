<p align="center">
  <img height="180" src="docs/.attachments/debian-package-icon.png" alt="Debian package icon"/>
</p>

<h3 align="center">Dockerized APT Repository</h3>

<p align="center">
    A Dockerized Debian repository designed to simplify the deployment of software packages for your Debian-based systems.
    <br />
    <a href="https://github.com/MaxCsr/apt-repository/wiki"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/MaxCsr/apt-repository/issues/new">Report Bug</a>
    ·
    <a href="https://github.com/MaxCsr/apt-repository/projects">Request Feature</a>
</p>

## About The Project

This Docker image includes all the necessary software and configurations required to set up a Debian repository. This includes the Debian package manager, APT, and the Nginx web server, which are both configured to work seamlessly with each other to provide a fully functional Debian repository.
It is lightweight and optimized for fast deployment, making it easy to set up a Debian repository on a variety of different systems.

## Usage

In a folder create those two files:

`.docker-compose.yml`
```yaml
services:
   apt-repository:
      env_file: .env
      image: maxcsr/apt-repository:${VERSION:-latest}
      ports:
         - "80:80"
      restart: unless-stopped
      user: root
      volumes:
         - "./gnupg:/root/.gnupg"
         - "./repository:/usr/share/nginx/html"
```

`.env`
```properties
#The version of the Docker image that will be pulled and used (the latest if left empty)
VERSION=
```

## Contact

Maxence Cassar - [Start a conversation on Teams](https://teams.microsoft.com/l/chat/0/0?users=Maxence.Cassar@supagency.com) - [E-mail](mailto:Maxence.Cassar@supagency.com)
