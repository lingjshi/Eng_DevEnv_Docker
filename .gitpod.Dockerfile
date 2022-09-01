FROM python:alpine3.7
RUN apk add --no-cache bash 
RUN apk add --update git curl vim tar tree 
RUN apk add --no-cache openssl-dev build-base python3-dev libffi-dev openssh

