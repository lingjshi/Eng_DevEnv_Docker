
FROM developenv/devenv-base:v001
USER develop
WORKDIR /home/develop/src
RUN git clone --recursive https://github.com/CiscoDevNet/meraki-code
RUN git clone --recursive https://github.com/meraki/automation-scripts


# Copy python sdk as per learning lab
WORKDIR /home/develop/src/meraki-code
RUN rm -rf /home/develop/src/meraki-code/meraki-python-sdk
RUN git clone https://github.com/meraki/meraki-python-sdk
#RUN cp -r ./meraki-python-sdk/meraki .
#RUN cp -r ./meraki-python-sdk/requirements.txt .
RUN touch meraki-python-sdk/get_baseline.py 
WORKDIR /home/develop/src/meraki-code

# Install depnedencies
USER root
RUN apk add --update --no-cache libxslt-dev linux-headers
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-mv-sense/requirements.txt 
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-captive-portal/sample-captive-portal/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-captive-portal/captive-portal-simulator/requirements-linux.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-location-scanning-python/locationscanningsimulator/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-location-scanning-python/locationscanningreceiver/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-webhooks/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-mission-1/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-mission-2/requirements.txt
#RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-mission-3/requirements.txt
RUN python3 -m pip install -r /home/develop/src/meraki-code/meraki-python-sdk/requirements.txt
RUN python3 -m pip install requests meraki pysnmp jsonpickle cachecontrol python-dateutil
USER develop
ENV KEY 6bec40cf957de430a6f1f2baa056b99a4fac9ea0

CMD ["/usr/local/bin/wrapper_script.sh"]

