module "slack_alert_lambda_error" {
  source             = "../modules/newrelic/slack_alert"
  name               = "${local.name} lambda error"
  slack_hooks_url    = var.slack_hooks_url
  slack_channel_name = var.slack_channel_name
  alert_policy_id    = module.infra_alert_lambda_error_sum.alert_policy_id
}

module "slack_alert_rds_cpu" {
  source             = "../modules/newrelic/slack_alert"
  name               = "${local.name} rds cpu average"
  slack_hooks_url    = var.slack_hooks_url
  slack_channel_name = var.slack_channel_name
  alert_policy_id    = module.infra_alert_rds_cpu_average.alert_policy_id
}

module "slack_alert_ses_bounce" {
  source             = "../modules/newrelic/slack_alert"
  name               = "${local.name} ses bounce"
  slack_hooks_url    = var.slack_hooks_url
  slack_channel_name = var.slack_channel_name
  alert_policy_id    = module.infra_alert_ses_bounce_sum.alert_policy_id
}
