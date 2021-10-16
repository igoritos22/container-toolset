FROM ubuntu:bionic
WORKDIR /root

LABEL maintainer="Igor Sousa <https://github.com/igoritos22>" \
    description="Docker Image com algumas ferramentas de rede para troubleshoting"

RUN apt-get update -qq && \
    apt-get install -y apt-transport-https \
                       ca-certificates \
                       software-properties-common \
                       man \
                       manpages-posix \
                       man-db \
                       vim \
                       screen \
                       curl \
                       atop \
                       htop \
                       dstat \
                       jq \
                       dnsutils \
                       tcpdump \
                       traceroute \
                       iputils-ping \
                       net-tools \
                       netcat \
                       iproute2 \
                       iputils-ping \
                       strace \
    && echo 'export PS1="[docker@igor-nettools]\$ "' >> /root/.bash_profile

CMD ["/bin/bash", "--login"]