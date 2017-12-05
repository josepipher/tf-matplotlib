FROM sanjose/centos7
MAINTAINER sanjose

RUN cd ~ \
    && yum install epel-release -y \
    && yum install python-pip -y \
    && pip install tensorflow \
    && yum install python-matplotlib -y \
    && /usr/bin/yes | pip uninstall numpy \
    && yum upgrade -y \
    && pip install -U numpy \
    && yum clean all \
    && rm -rf ~/.cache/pip

WORKDIR /root/neural-network

COPY simple_neural_network.py /root/
