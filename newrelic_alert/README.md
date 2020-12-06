# newrelic alert sample

## 1. Apply

```sh
# [Prepare] Install tfenv

$ tfenv install 0.12.7

$ export NEW_RELIC_ACCOUNT_ID=<account id>
$ export NEW_RELIC_API_KEY=<api key>

$ terraform init
$ terraform plan
$ terraform apply
```
