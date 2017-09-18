FROM node:6.10
MAINTAINER Hardys <hardyscc@gmail.com>

RUN apt-get update && \
apt-get install python-dev -y && \
apt-get clean

ENV SERVERLESS serverless@1.21.0

RUN npm install -g $SERVERLESS && \
curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py
RUN pip install awscli
