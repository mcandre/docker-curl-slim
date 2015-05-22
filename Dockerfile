FROM progrium/busybox
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN opkg-install curl
ENTRYPOINT ["/usr/bin/curl", "-s"]
