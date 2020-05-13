FROM nginx:alpine
COPY static-html /usr/share/nginx/html
VOLUME /usr/share/filebeat/mylog/
