FROM nginx:alpine

LABEL maintainer="DevUlrix"
LABEL org.opencontainers.image.source https://github.com/devulrix/vmworld-demo-2021

EXPOSE 80

COPY ./html /usr/share/nginx/html