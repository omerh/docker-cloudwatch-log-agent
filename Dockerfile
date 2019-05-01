FROM ubuntu:16.04

ARG AGENT_VER=1.2.2
WORKDIR /opt

RUN apt-get update \
    && apt-get install -y unzip libwww-perl libdatetime-perl curl

RUN curl https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-${AGENT_VER}.zip -O \
    && unzip ./CloudWatchMonitoringScripts-${AGENT_VER}.zip \
    && rm -f ./CloudWatchMonitoringScripts-${AGENT_VER}.zip

COPY run.sh ./

CMD [ "bash", "/opt/run.sh" ]
