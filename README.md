# docker-curl-slim - a slim Docker container for curl

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-curl-slim/

# ABOUT

docker-curl-slim is a container for downloading URLs with curl, made smaller with a few techniques:

* Switch base image from [ubuntu](https://registry.hub.docker.com/_/ubuntu/) to [progrium/busybox](https://registry.hub.docker.com/u/progrium/busybox/).

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
* [Node.js](https://nodejs.org/en/) (for dockerlint)
