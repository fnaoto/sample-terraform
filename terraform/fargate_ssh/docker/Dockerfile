FROM amazonlinux:2

ARG SSM_AGENT_CODE
ARG SSM_AGENT_ID
ENV AWS_PROFILE test
ENV AWS_REGION ap-northeast-1

RUN yum update -y && \
    yum install -y amazon-ssm-agent
RUN pip install awscli
RUN amazon-ssm-agent \
    -register \
    -code ${SSM_AGENT_CODE} \
    -id ${SSM_AGENT_ID} \
    -region ${AWS_REGION}
COPY entrypoint.sh .

CMD ["./entrypoint.sh"]
