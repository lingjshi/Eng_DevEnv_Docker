FROM python:alpine3.7
RUN apk add --no-cache bash 
RUN apk add --update git curl vim tar tree 
RUN apk add --no-cache openssl-dev build-base python3-dev libffi-dev openssh
RUN curl -L -s  -o /usr/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.5.0/ttyd_linux.x86_64 
RUN chmod 755 /usr/bin/ttyd
WORKDIR /home/develop

COPY config/wrapper_script.sh /usr/local/bin/wrapper_script.sh
COPY config/filebrowser /usr/local/bin/filebrowser
COPY config/config.json /usr/local/bin/config.json
COPY config/cors.list /usr/local/bin/cors.list
COPY config/index.html /usr/bin/index.html
ENV CORS_WHITELIST_FILEPATH=/usr/local/bin/cors.list

EXPOSE 8080
EXPOSE 9090

RUN  adduser -S develop
USER develop
RUN mkdir src
