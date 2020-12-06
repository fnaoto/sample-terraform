resource "newrelic_alert_channel" "alert" {
  name = var.name
  type = "slack"

  config {
    url     = var.slack_hooks_url
    channel = var.slack_channel_name
  }
}

resource "newrelic_alert_policy_channel" "alert" {
  policy_id = var.alert_policy_id
  channel_ids = [
    newrelic_alert_channel.alert.id
  ]
}
