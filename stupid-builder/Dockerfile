FROM fedora:31
WORKDIR /
MAINTAINER jodyscott

RUN dnf -y update
RUN dnf -y install bind-utils jq net-tools procps iproute findutils file which iputils
RUN dnf -y install gcc automake golang make
