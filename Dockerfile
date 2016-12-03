FROM ubuntu:16.04

ADD assets/* /opt/resource/

#Install some utilities needed to be able to install the rest
RUN apt-get update && apt-get install -y \
  apt-transport-https \
  curl

# Add cf package repo and key to sources.list
RUN curl https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -
RUN echo "deb http://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list

RUN apt-get update && apt-get install -y \
  cf-cli \
  jq \
  git \
  python3

CMD /bin/bash  
