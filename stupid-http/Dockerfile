FROM fedora:31
WORKDIR /
MAINTAINER jodyscott

RUN dnf -y update
RUN dnf -y install bind-utils jq net-tools procps iproute findutils file which iputils

ADD stupid-curl /usr/bin/stupid-curl
RUN chmod +x /usr/bin/stupid-curl

RUN curl -L -o /usr/sbin/stupid-http https://github.com/jodydadescott/stupid-httpd/releases/download/v1-linux/stupid-http
RUN chmod +x /usr/sbin/stupid-http

ADD entrypoint.sh /
RUN chmod 755 /entrypoint.sh
ADD tmp/common_functions /common_functions
RUN chmod 644 /common_functions

CMD ["/entrypoint.sh"]
