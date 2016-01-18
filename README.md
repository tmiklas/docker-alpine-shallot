# alpine-shallot

Shallot packaged as Docker container

![image](https://badge.imagelayers.io/tmiklas/alpine-shallot.svg)

### About

This docker container is based on `alpine:3.3` for minimal container size with [Shallot](https://github.com/katmagic/Shallot/) compiled at container build time.

### Usage

The container exposes `/shallot` which is a working directory of the application. If you choose to save output to file, this is where it will be created.

`$ docker run -d -v ~/shallot-output:/shallot tmiklas/alpine-shallot -f test-key.txt ^test`

### License

The same as used with Shallot - see [LICENSE](https://raw.githubusercontent.com/katmagic/Shallot/master/LICENSE)