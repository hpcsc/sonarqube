# Sonarqube

To be used as submodule to other compose projects to provide local Sonarqube server

## Usage (in other compose projects)

```
git submodule add https://github.com/hpcsc/sonarqube
git submodule update --init
```

This sonarqube submodule expects parent project to provide 2 environment variables `SONARQUBE_VERSION` and `POSTGRES_VERSION`

When using with parent project, `docker-compose.sonarqube.yml` needs to be passed in explicitly to docker-compose command (or set `COMPOSE_FILE` variable)

## Examples of usage

- [https://github.com/hpcsc/teamcity](https://github.com/hpcsc/teamcity)
