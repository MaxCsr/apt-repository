<center>

![debian-package-icon.png](/docs/.attachments/debian-package-icon.png  =180x180)
</center>

<h3 align="center">Dockerized APT Repository</h3>

<p align="center">
    Workflow transcoding service, from a dynamic routing matrix to Assign and User Manager
    <br />
    <a href="https://github.com/MaxCsr/apt-repository/wiki"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/MaxCsr/apt-repository/issues/new">Report Bug</a>
    ·
    <a href="https://github.com/MaxCsr/apt-repository/projects">Request Feature</a>
</p>

## About The Project

The Workflow Hub Service provides the ability to integrate the client's CSV routing matrix directly into Assign and User Manager.
It works with Jobs composed of several Steps, which can be individually restarted in case of error. 
The transcoded data is intended to be directly integrated into Assign and User Manager without any manual action required.

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
