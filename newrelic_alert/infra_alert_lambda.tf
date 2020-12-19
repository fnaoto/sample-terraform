module "infra_alert_lambda_error_sum" {
  source               = "../modules/newrelic/infra_alert"
  name                 = "${local.name} lambda_error_sum"
  event                = "ServerlessSample"
  select               = "provider.errors.Sum"
  where                = "awsAccountId = ${data.aws_caller_identity.current.account_id}"
  integration_provider = "LambdaFunction"

  critical = [
    {
      duration      = 5
      value         = 5
      time_function = "any"
    }
  ]

  warning = [
    {
      duration      = 5
      value         = 1
      time_function = "any"
    }
  ]
}
