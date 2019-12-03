FROM amazonlinux:2

ARG SSM_AGENT_CODE
ARG SSM_AGENT_ID
ARG _AWS_ACCESS
ARG _AWS_SECRET
ARG _AWS_REGION

ENV AWS_ACCESS_KEY_ID _AWS_ACCESS
ENV AWS_SECRET_ACCESS_KEY _AWS_SECRET
ENV AWS_REGION _AWS_REGION

RUN yum update -y && \
    yum install -y amazon-ssm-agent
RUN amazon-ssm-agent \
    -register \
    -code ${SSM_AGENT_CODE} \
    -id ${SSM_AGENT_ID} \
    -region ${AWS_REGION}
COPY entrypoint.sh .

CMD ["./entrypoint.sh"]
