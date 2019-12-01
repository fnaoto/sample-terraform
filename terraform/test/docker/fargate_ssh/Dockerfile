FROM amazonlinux:2

RUN yum update -y && \
    yum install -y amazon-ssm-agent
COPY entrypoint.sh .

CMD ["./entrypoint.sh"]
