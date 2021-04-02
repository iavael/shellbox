FROM alpine:3.13.4

RUN mkdir -p /etc/dropbear/
RUN adduser shell -D

RUN apk add --no-cache dropbear

ADD entrypoint.sh /usr/local/sbin/entrypoint.sh

ENTRYPOINT [ "/usr/local/sbin/entrypoint.sh" ]
CMD [ "-p", "2222" ]
