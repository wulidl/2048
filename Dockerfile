FROM alpine:latest

USER root
RUN apk --update add nginx

USER 1001
COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
