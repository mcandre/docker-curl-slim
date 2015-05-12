# docker-curl-slim - a slim Docker container for curl

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-curl-slim/

# ABOUT

docker-curl-slim is a container for downloading URLs with curl, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [busybox](https://registry.hub.docker.com/u/progrium/busybox/).

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-curl-slim http://ron-swanson-quotes.herokuapp.com/quotes && echo ''
{"quote":"Breakfast food can serve many purposes."}
docker images | grep mcandre/docker-curl-slim | awk '{ print $(NF-1), $NF }'
5.393 MB
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
