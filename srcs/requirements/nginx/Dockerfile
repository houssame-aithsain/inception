FROM debian:bookworm
RUN apt update && apt install -y nginx && \
    apt install -y openssl && openssl req -subj '/CN=inception@houssame.com /O=houssame /C=MR' -new -newkey rsa:2048 -sha256 -days 365 -noenc -x509 -keyout private_key.key -out public_key.crt
COPY ./conf/default /etc/nginx/sites-available/.
CMD [ "nginx", "-g" , "daemon off;" ]
