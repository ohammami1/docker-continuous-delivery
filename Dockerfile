from alpine

RUN mkdir /app
RUN cd /app
RUN chmod +x entrypoint.sh

ADD entrypoint.sh .
ADD /tmp/build.tar.gz .

WORKDIR ["/app"]
ENTRYPOINT ["./entrypoint.sh"]
