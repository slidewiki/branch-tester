FROM slidewiki/runtime:latest
MAINTAINER Ben Wulff "benjamin.wulff.de@ieee.org"

WORKDIR /nodeApp
ADD entrypoint.sh /

VOLUME /config/microservices.js

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
