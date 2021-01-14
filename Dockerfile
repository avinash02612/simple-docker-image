FROM nginx:stable-alpine

LABEL maintainer "avising"

COPY default.conf /etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/

COPY ./html /usr/share/nginx/html

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
