resource "newrelic_alert_policy" "alert" {
  name = var.name
}

resource "newrelic_infra_alert_condition" "alert" {
  policy_id = newrelic_alert_policy.alert.id

  name                 = var.name
  type                 = var.type
  event                = var.event
  select               = var.select
  comparison           = var.comparison
  where                = var.where
  integration_provider = var.integration_provider

  dynamic "critical" {
    for_each = var.critical
    content {
      duration      = critical.value.duration
      value         = critical.value.value
      time_function = critical.value.time_function
    }
  }

  dynamic "warning" {
    for_each = var.warning
    content {
      duration      = warning.value.duration
      value         = warning.value.value
      time_function = warning.value.time_function
    }
  }
}
