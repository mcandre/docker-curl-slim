# docker-curl-slim - a Docker container for curl

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-curl-slim/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-curl-slim .
docker run --rm mcandre/docker-curl-slim http://icanhazip.com
40.50.60.70
docker run --rm mcandre/docker-curl-slim http://ron-swanson-quotes.herokuapp.com/quotes && echo ""
{"quote":"Never half-ass two things. Whole-ass one thing."}
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```
