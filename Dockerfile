FROM fedora:latest

RUN dnf update -y
RUN \
    dnf -v install -y bind-utils atop htop nmap iftop iotop mc net-tools xfsprogs mtr etcd git \
    && dnf clean all \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/
