# fargate ssh sample

## 1. Apply

```sh
# [Prepare] Install tfenv

$ tfenv install 0.12.7

$ aws configure --profile test
$ export AWS_PROFILE=test

$ terraform init
$ terraform plan
$ terraform apply
```

## 2. Build docker image

```sh
$ terraform output # memo output info
$ cd docker
# Edit docker/push_ecr.sh and Fix `export`

# [Prepare] Install docker and awscli

$ ./push_ecr.sh
```

## 3. Start container up

```sh
$ go get -u github.com/awslabs/fargatecli
$ export PATH=$HOME/go/bin:$PATH
$ export AWS_REGION=ap-northeast-1

# Check ECS Service
$ fargatecli service list \
  --cluster aws-sample-test-fargate_ssh

# Start up a container
$ fargatecli service scale aws-sample-test-fargate_ssh 1 \
  --cluster aws-sample-test-fargate_ssh

# Check service
$ fargatecli service info aws-sample-test-fargate_ssh \
  --cluster aws-sample-test-fargate_ssh
```

## 4. Start session

```sh
# Get target id and start session
$ aws ssm describe-instance-information --query 'InstanceInformationList[0].InstanceId'
$ aws ssm start-session --target <target id>
```

## 5. Stop container

```sh
$ fargatecli service scale aws-sample-test-fargate_ssh 0 \
  --cluster aws-sample-test-fargate_ssh

$ fargatecli service info aws-sample-test-fargate_ssh \
  --cluster aws-sample-test-fargate_ssh
```
