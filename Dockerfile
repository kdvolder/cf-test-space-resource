FROM ubuntu:16.04

ADD assets/* /opt/resource/

RUN apt-get update && apt-get install -y \
  jq \
  git \
  python3

CMD /bin/bash  
