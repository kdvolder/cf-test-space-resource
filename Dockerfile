FROM ubuntu:16.04

ADD assets/* /opt/cf-test-space-resource/

RUN apt-get update && apt-get install -y \
  jq \
  git \
  python3

CMD /bin/bash  
