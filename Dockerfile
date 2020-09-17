FROM centos:systemd

WORKDIR /root

COPY build.sh .

RUN build.sh

# Run systemd init system as PID1
CMD [ "/sbin/init" ]

