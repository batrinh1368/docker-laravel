# Docker for Laravel

Generic docker image for Laravel Applications

Docker hub: https://hub.docker.com/r/trinhnv/php-laravel

Use within your GitLab's CI or Github Actions.

Laravel template reference: https://github.com/batrinh1368/laravel-template

## Run docker
```
$ docker build -t laravel-template:latest .
$ docker run -d -it --rm --name laravel-template -p 3000:3000 laravel-template:latest
```
