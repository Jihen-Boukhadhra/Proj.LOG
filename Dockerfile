FROM rockylinux:9.3-minimal
RUN microdnf install -y dnf
RUN dnf install -y rsyslog
COPY rsyslog.conf /etc/rsyslog.conf
EXPOSE 514/tcp 514/udp
CMD ["/sbin/rsyslogd", "-n"]
