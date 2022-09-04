FROM gitpod/workspace-full:latest
RUN apk add --no-cache bash 
RUN apk add --update git curl vim tar tree 
RUN apk add --no-cache openssl-dev build-base python3-dev libffi-dev openssh
RUN curl -L -s  -o /usr/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.5.0/ttyd_linux.x86_64 
RUN chmod 755 /usr/bin/ttyd
