#!/bin/sh

$(aws ecr get-login --no-include-email)

docker build -t ${ECR_URL?} \
    --build-arg ${SSM_AGENT_CODE?} \
    --build-arg ${SSM_AGENT_ID?} \
    --build-arg ${_AWS_ACCESS?} \
    --build-arg ${_AWS_SECRET?} \
    --build-arg ${_AWS_REGION?} \
    .

docker push ${ECR_URL?}
