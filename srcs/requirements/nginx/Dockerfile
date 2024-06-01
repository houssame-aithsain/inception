FROM debian
RUN apt-get update && apt-get install -y nginx && \
    apt-get install -y openssl && openssl req -subj '/CN=example.com /O=houssame /C=MR' -new -newkey rsa:2048 -sha256 -days 365 -noenc -x509 -keyout server.key -out server.crt
COPY ./conf/default /etc/nginx/sites-available/.
CMD [ "nginx", "-g" , "daemon off;" ]
