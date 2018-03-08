FROM alpine

RUN mkdir /app
RUN cd /app

ADD build.tar.gz .

ADD entrypoint.sh /usr/bin/entrypoint.sh
CMD sh /usr/bin/entrypoint.sh

WORKDIR ["/app"]
