FROM alpine:3.5

LABEL version="1.0"
LABEL description="Docker Images with OpenSSL \
The s_server command implements a generic SSL/TLS server \
which listens for connections on a given port using SSL/TLS."

RUN apk add --no-cache vim curl openssl wget
#RUN apt-get update && apt-get install -q -y vim curl git openssl libssl-doc wget && apt-get clean 

## And create self-signed ssl keys for test purposes (bind mount proper ones to running container)
RUN openssl req -new -x509 -nodes -out /home/ssl.crt -keyout /home/ssl.key -days 3650 -subj '/CN=localhost'

##
CMD openssl s_server -accept 8443 -cert /home/ssl.crt -key /home/ssl.key -www

# http and httpd ports. You can map these to whatever host ports you want with -p
EXPOSE 8443

# Default env vars for httpd. You can override these at runtime if you want to
ENV SERVERNAME localhost
ENV ADMINEMAIL root@localhost


