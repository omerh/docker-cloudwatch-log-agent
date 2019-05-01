#!/bin/bash

while true; do
    /opt/aws-scripts-mon/mon-put-instance-data.pl \
        --mem-util --mem-used --mem-avail \
        --disk-path=/ --disk-space-util --disk-space-used --disk-space-avail \
        --from-cron
    sleep 30
done
