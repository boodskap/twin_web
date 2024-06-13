FROM nginx:latest
COPY / /usr/share/nginx/html/
COPY /assets/default.conf /etc/nginx/conf.d/default.conf
COPY /assets/ /usr/share/nginx/html/assets/assets/
