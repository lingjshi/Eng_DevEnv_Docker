FROM developenv/devenv-base-py27:v002
USER develop
WORKDIR /home/develop/src
RUN git clone --recursive https://github.com/CiscoDevNet/aci_ansible_learning_labs_code_samples
RUN git clone --recursive https://github.com/CiscoDevNet/aci-learning-labs-code-samples
RUN git clone --recursive https://github.com/datacenter/acitoolkit


USER root
# INSTALL python sdk and samples as per learning lab: Ansible, acitoolkit & cobrasdk are installed

# Install depnedencies Ansible
WORKDIR /home/develop/src
RUN apk add --update --no-cache libxslt-dev
RUN python3 -m pip install ansible==2.4.2

# Install aci toolkit and samplecode 
RUN python -m pip install -r /home/develop/src/aci-learning-labs-code-samples/requirements.txt
WORKDIR /home/develop/src/acitoolkit
RUN pip install -r /home/develop/src/acitoolkit/requirements.txt
RUN python setup.py install
COPY config/credentials.py /home/develop/src/acitoolkit/samples

# install cobra sdk and sample
RUN mkdir -p /home/develop/src/cobrasdk
WORKDIR /home/develop/src/cobrasdk
COPY config/acicobra-3.0_1k-py2.7.egg /home/develop/src/cobrasdk/acicobra-3.0_1k-py2.7.egg
COPY config/acimodel-3.0_1k-py2.7.egg /home/develop/src/cobrasdk/acimodel-3.0_1k-py2.7.egg
RUN easy_install -Z acicobra-3.0_1k-py2.7.egg
RUN easy_install -Z acimodel-3.0_1k-py2.7.egg

WORKDIR /home/develop/src

USER develop

CMD ["/usr/local/bin/wrapper_script.sh"]

