FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum --disableplugin=subscription-manager -y install rsync yum \
&& yum --disableplugin=subscription-manager clean all

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

