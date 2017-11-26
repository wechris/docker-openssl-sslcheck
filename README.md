# docker-openssl-sslcheck
Docker Image with OpenSSL s_client and s_server 


docker build -t wechris/opensslserver .

docker run -it -p 8443:8443 --name opensslserver wechris/opensslserver

https://wiki.openssl.org/index.php/Manual:S_server(1)

https://trent.utfs.org/wiki/OpenSSL

https://stroessenreuther.info/knowledge/Tools_und_Bibliotheken/OpenSSL.html

https://news.ycombinator.com/item?id=9968207

https://github.com/KHP-Informatics/httpd-php7-ssl-docker

https://github.com/jig/docker-openssl

https://hub.docker.com/r/centurylink/openssl/
