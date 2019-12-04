#!/bin/sh

export ECR_URL=""
export SSM_AGENT_CODE=""
export SSM_AGENT_ID=""

$(aws ecr get-login --no-include-email)

docker build -t ${ECR_URL?} \
    -v ~/.aws:.aws \
    --build-arg ${SSM_AGENT_CODE?} \
    --build-arg ${SSM_AGENT_ID?} \
    .

docker push ${ECR_URL?}
