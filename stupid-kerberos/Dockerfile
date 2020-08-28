FROM fedora:31
WORKDIR /
MAINTAINER jodyscott

RUN dnf -y update
RUN dnf -y install bind-utils jq net-tools procps iproute findutils file which iputils
RUN dnf -y install krb5-libs krb5-server krb5-workstation

RUN mkdir -p /usr/share/krb5
ADD krb5.conf /usr/share/krb5.example.conf
RUN mv /etc/krb5.conf /usr/share/krb5.original.conf
ADD setup.sh /
RUN chmod +x /setup.sh

ADD entrypoint.sh /
RUN chmod 755 /entrypoint.sh
ADD tmp/common_functions /common_functions
RUN chmod 644 /common_functions

CMD ["/entrypoint.sh"]
