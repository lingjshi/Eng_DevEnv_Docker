
#Final stage
FROM developenv/devenv-base:v001
USER root
RUN apk add --no-cache libxml2 \
                       libxml2-dev \
                       libxslt-dev
USER develop

RUN git clone https://github.com/CiscoDevNet/dnav3-code

USER root
RUN cd dnav3-code && pip install -r requirements.txt
USER develop
CMD ["/usr/local/bin/wrapper_script.sh"]
