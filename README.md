# docker-openssl-sslcheck
Docker Image with OpenSSL s_client and s_server 


docker build -t wechris/opensslserver .

docker run -it -p 8443:8443 --name opensslserver wechris/opensslserver

https://wiki.openssl.org/index.php/Manual:S_server(1)