
#Final stage
FROM developenv/devenv-base:v001
USER root
RUN apk add --no-cache libxml2 \
                       libxml2-dev \
                       libxslt-dev
USER develop

RUN git clone https://github.com/CiscoDevNet/dnav3-code
RUN git clone https://github.com/CiscoDevNet/coding-skills-sample-code
RUN touch dnav3-code/intro-python/part1/fortune.py

USER root
RUN cd dnav3-code && pip install -r requirements.txt
WORKDIR /home/develop/src 
RUN mv dnav3-code/intro-python . 
RUN mv dnav3-code/intro-ansible . 
RUN mv dnav3-code/intro-mdp . 
RUN mv dnav3-code/rest-api intro-rest-api 
RUN rm -rf dnav3-code

USER develop
CMD ["/usr/local/bin/wrapper_script.sh"]
