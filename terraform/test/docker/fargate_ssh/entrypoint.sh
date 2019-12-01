#!/bin/sh

set -ex

amazon-ssm-agent -register \
    -code ${SSM_AGENT_CODE} \
    -id ${SSM_AGENT_ID} \
    -region ${AWS_REGION}

amazon-ssm-agent &

sleep 3600
