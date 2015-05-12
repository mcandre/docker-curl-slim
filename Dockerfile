FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apk add --update curl

ENTRYPOINT ["/usr/bin/curl", "-s"]
