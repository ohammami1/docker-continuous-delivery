FROM alpine

COPY ** .
COPY .* .
RUN tar cvf build.tar .
RUN gzip build.tar

ADD entrypoint.sh /usr/bin/entrypoint.sh
CMD sh /usr/bin/entrypoint.sh

