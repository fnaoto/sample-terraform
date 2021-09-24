## gcp login

- install
  - https://cloud.google.com/sdk/downloads

```sh
$ gcloud auth revoke --all
$ gcloud auth login
$ gcloud auth application-default login
$ gcloud config set project <gcp_project_id>
```

## enable compute engine api for terraform

- select project and enable api
  - https://console.developers.google.com/apis/library/compute.googleapis.com

```sh
$ gcloud services enable container.googleapis.com
$ gcloud services enable compute.googleapis.com
```

## create gcs bucket for terraform

- create bucket
  - https://cloud.google.com/storage/docs/creating-buckets

## add gcp key json for terraform

- create service accout
  - https://cloud.google.com/iam/docs/creating-managing-service-account-keys

```sh
$ cp your-gcp-key.json gcp_kubernetes/credentials.json
```

## terraform wapper shell

```sh
$ export GOOGLE_APPLICATION_CREDENTIALS=./credentials.json
$ export GOOGLE_PROJECT="<project id>"
## Enter gcs bucket name and gcp project id
## Select default workspace
$ terraform init
$ terraform plan
$ terraform apply
```
