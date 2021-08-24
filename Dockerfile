FROM nginx:alpine

LABEL maintainer="DevUlrix"

EXPOSE 80

COPY ./html /usr/share/nginx/html