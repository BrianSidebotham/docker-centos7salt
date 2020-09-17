FROM centos/systemd

WORKDIR /root

ADD ./build.sh /

RUN /build.sh

# Run systemd init system as PID1
CMD [ "/sbin/init" ]
