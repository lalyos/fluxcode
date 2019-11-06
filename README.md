[![Docker Automated build](https://img.shields.io/docker/automated/lalyos/fluxcode.svg)](https://hub.docker.com/r/lalyos/fluxcode/)

See [original repo](https://github.com/progrium/fluxcode). This fork is just created,
to give an easy way to try fluxcode in a browser, without any local/heroku installation. 

Watch progrium's demo [video](https://vimeo.com/201584912)

Todo: ... short description ... 

## Try in PWD (play-with-docker)

If you just want to try it right away click below:

[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/lalyos/fluxcode/master/stack.yml)

It will open up Play-With-Docker (hosted docker environment) pulling the dockerized version of fluxcode, and starting a container. Once the `Session stack builder` dialog finishes, and you see lines like:
```
Pulling fluxcode ... done
Creating network pwd_default
Creating service pwd_fluxcode
```

- Click the `close` button on bottom right.
- Click `open port` button 
- Type `8080` and click `OK`

A new tab will open up ready to play with fluxcode.

Ways to explore:
- open chrome debugger's console, type `env.list()`
- press `<ESC>` while foxus is on the code editor, will open up a _shell_

## Use in Docker

If you have docker installed locally:
```
docker run -d -p 8080:80 lalyos/fluxcode
```
Then open your browser: [http://localhost:8080/](http://localhost:8080/)

