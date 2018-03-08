FROM alpine

COPY build.tar.gz build.tar.gz

ADD entrypoint.sh /usr/bin/entrypoint.sh
CMD sh /usr/bin/entrypoint.sh

