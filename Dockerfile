FROM alpine:latest

RUN apk add --update nginx
RUN sed -i 's/return 404;/root  \/2048; index  index.html;/' /etc/nginx/conf.d/default.conf
RUN mkdir /2048
RUN mkdir /run/nginx

COPY 2048 /2048

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
