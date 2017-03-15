FROM slidewiki/runtime:latest
MAINTAINER Ben Wulff "benjamin.wulff.de@ieee.org"

WORKDIR /nodeApp

EXPOSE 3000

add entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
