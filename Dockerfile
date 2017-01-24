FROM ruby:2.3.3-alpine
RUN ls -la
RUN df -h
RUN dd if=/dev/zero of=1g.img bs=1 count=0 seek=100G
RUN apk --update add --upgrade apk-tools
RUN apk --update add --no-cache --update --virtual build-dependencies build-base ruby-dev openssl-dev libxml2-dev libxslt-dev postgresql-dev libc-dev linux-headers nodejs tzdata postgresql
RUN df -h
RUN cat /etc/*release
