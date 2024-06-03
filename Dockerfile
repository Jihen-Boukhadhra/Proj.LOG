FROM alpine:latest

# Installing rsyslog and Python
RUN apk update && apk add --no-cache rsyslog python3

# Adding the application files
ADD . /Proj_LOG

# Setting working directory
WORKDIR /Proj_LOG

# Configuring rsyslog to log to stdout
RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf \
    && mkdir -p /etc/rsyslog.d/ \
    && echo ". /dev/stdout" > /etc/rsyslog.d/50-default.conf

# Starting rsyslog & the application
CMD /usr/sbin/rsyslogd && python3 Proj_LOG.py
