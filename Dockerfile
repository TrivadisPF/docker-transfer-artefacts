#
#  Author: Guido Schmutz
#  Date: 2020-07-27
#
#  https://github.com/trivadispf/docker-presto-cli
#
FROM alpine:latest

COPY jdbc-drivers /libs/jdbc-drivers
COPY ksqldb-udfs /libs/ksqldb-udfs
COPY nifi-nars /libs/nifi-nars
COPY config /config

# copy the generator script and make it executable
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

CMD run.sh
