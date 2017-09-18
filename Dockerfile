FROM node:6.10-alpine
MAINTAINER Hardys <hardyscc@gmail.com>

RUN apk add --no-cache \
    python \
    py-pip \
    ca-certificates \
    groff \
    less \
    bash \
  && pip install --no-cache-dir --upgrade pip awscli

RUN yarn global add serverless@1.22.0

ENTRYPOINT ["/bin/bash", "-c"]
