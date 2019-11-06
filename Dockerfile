FROM nginx:alpine

COPY . /usr/share/nginx/html
COPY fluxcode.html /usr/share/nginx/html/index.html