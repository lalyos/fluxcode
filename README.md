[![Docker Automated build](https://img.shields.io/docker/automated/lalyos/fluxcode.svg)](https://hub.docker.com/r/lalyos/fluxcode/)

See [original repo](https://github.com/progrium/fluxcode). This fork is just created,
to give an easy way to try fluxcode in a browser, without any local/heroku installation. 

Watch progrium demo [video](https://vimeo.com/201584912)

Todo: ... short description ... 

## Try in PWD (play-with-docker)

[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/lalyos/fluxcode/master/stack.yml)

If you just want to try itIf you don't have docker installed, 
for the impatient:
.. open in pwd

## Use in Docker

If you have docker installed locally:
```
docker run -d -p 8080:80 lalyos/fluxcode
```
Then open your browser: [http://localhost:8080/](http://localhost:8080/)

## Exercises

Guided selfexperiment ...

Open Chrome's developer tools. Type in the console:
```
env.list()
```
