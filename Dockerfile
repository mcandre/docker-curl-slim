FROM scratch
# FROM ubuntu:12.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

ADD root.tgz /

# RUN apt-get update
# RUN apt-get install -y curl

# ENTRYPOINT ["/usr/bin/curl", "-s"]
