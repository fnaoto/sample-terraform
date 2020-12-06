resource "newrelic_alert_policy" "alert" {
  name = var.name
}

data "newrelic_entity" "alert" {
  name   = var.apm_name
  type   = "APPLICATION"
  domain = "APM"
}

resource "newrelic_alert_condition" "alert" {
  policy_id = newrelic_alert_policy.alert.id

  name     = var.name
  type     = var.type
  entities = [data.newrelic_entity.alert.application_id]
  metric   = var.metric

  term {
    duration      = var.duration
    operator      = var.operator
    priority      = var.priority
    threshold     = var.threshold
    time_function = var.time_function
  }
}
