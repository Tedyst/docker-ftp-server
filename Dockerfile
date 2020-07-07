FROM alpine:latest
WORKDIR /media
EXPOSE 21
EXPOSE 20

RUN apk update && apk add vsftpd bash

ADD vsftpd.conf /etc/vsftpd

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]