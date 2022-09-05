FROM gitpod/workspace-full:latest
RUN apk add --no-cache bash 
RUN apk add --update git curl vim tar tree 
