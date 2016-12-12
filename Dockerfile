FROM alpine:latest
RUN apk add --no-cache aria2 
COPY aria2.conf /etc/aria2/

VOLUME /data/ 

EXPOSE 6800

CMD ["/usr/bin/aria2c","--conf-path=/etc/aria2/aria2.conf"]
