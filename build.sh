#!/bin/bash

set -ex

AGENT_VER="1.2.2"
docker build --no-cache --build-arg=AGENT_VER=${AGENT_VER} -t omerha/cloudwatch-log-agent:${AGENT_VER} .
docker push omerha/cloudwatch-log-agent:${AGENT_VER}
