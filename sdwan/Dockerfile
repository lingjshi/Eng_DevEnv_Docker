
FROM developenv/devenv-base:v001
USER develop
WORKDIR /home/develop/src
RUN git clone git://github.com/npateriya/Getting-started-with-Cisco-SD-WAN-REST-APIs
WORKDIR Getting-started-with-Cisco-SD-WAN-REST-APIs
USER root
RUN python3 -m pip install -r requirements.txt
USER develop

CMD ["/usr/local/bin/wrapper_script.sh"]

