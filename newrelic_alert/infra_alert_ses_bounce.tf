module "infra_alert_ses_bounce_sum" {
  source               = "../modules/newrelic/infra_alert"
  name                 = "${local.name} ses_bounce_sum"
  event                = "SesRegionSample"
  select               = "provider.Bounce.Sum"
  where                = "awsAccountId = ${data.aws_caller_identity.current.account_id}"
  integration_provider = "SesRegion"

  critical = [
    {
      duration      = 5
      value         = 50
      time_function = "any"
    }
  ]

  warning = [
    {
      duration      = 5
      value         = 25
      time_function = "any"
    }
  ]
}
