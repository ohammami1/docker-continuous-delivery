from alpine

mkdir /app
cd /app
ADD entrypoint.sh .
ADD /tmp/build.tar.gz .
chmod +x entrypoint.sh
WORKDIR ["/app"]
ENTRYPOINT ["./entrypoint.sh"]
