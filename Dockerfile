FROM nginx:alpine

RUN apk update \
    && apk add nginx \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

COPY custom.conf /etc/nginx/conf.d/

EXPOSE 81

CMD ["nginx","-g","daemon off;"]
