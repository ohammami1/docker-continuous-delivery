FROM alpine

RUN mkdir /app
RUN cd /app

ADD entrypoint.sh .
RUN chmod +x entrypoint.sh

ADD /tmp/build.tar.gz .

WORKDIR ["/app"]
ENTRYPOINT ["./entrypoint.sh"]
