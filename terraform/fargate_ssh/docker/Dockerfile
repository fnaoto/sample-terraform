FROM amazonlinux:2

ARG SSM_AGENT_CODE
ARG SSM_AGENT_ID
ARG AWS_REGION
ARG ACCESS_KEY_ID
ARG SECRET_ACCESS_KEY

RUN yum update -y && \
    yum install -y amazon-ssm-agent
RUN amazon-ssm-agent \
    -register \
    -code ${SSM_AGENT_CODE} \
    -id ${SSM_AGENT_ID} \
    -region ${AWS_REGION}
COPY entrypoint.sh .

CMD ["./entrypoint.sh"]
