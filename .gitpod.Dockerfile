FROM gitpod/workspace-full:latest
RUN apk add --no-cache bash 
RUN apk add --update git curl vim tar tree 
RUN apk add --no-cache openssl-dev build-base python3-dev libffi-dev openssh
COPY config/wrapper_script.sh /usr/local/bin/wrapper_script.sh
COPY config/filebrowser /usr/local/bin/filebrowser
COPY config/config.json /usr/local/bin/config.json
COPY config/cors.list /usr/local/bin/cors.list
COPY config/index.html /usr/bin/index.html
ENV CORS_WHITELIST_FILEPATH=/usr/local/bin/cors.list

