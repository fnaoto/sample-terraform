#!/bin/sh

set -eu

export ECR_URL=""
export SSM_AGENT_CODE=""
export SSM_AGENT_ID=""
export AWS_REGION="ap-northeast-1"
export ACCESS_KEY_ID=""
export SECRET_ACCESS_KEY=""

$(aws ecr get-login --no-include-email)

docker build -t ${ECR_URL} \
    --build-arg SSM_AGENT_CODE=${SSM_AGENT_CODE} \
    --build-arg SSM_AGENT_ID=${SSM_AGENT_ID} \
    --build-arg AWS_REGION=${AWS_REGION} \
    --build-arg ACCESS_KEY_ID=${ACCESS_KEY_ID} \
    --build-arg SECRET_ACCESS_KEY=${SECRET_ACCESS_KEY} \
    .

docker push ${ECR_URL}
