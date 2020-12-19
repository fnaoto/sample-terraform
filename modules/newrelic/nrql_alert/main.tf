resource "newrelic_alert_policy" "alert" {
  name = var.name
}

resource "newrelic_nrql_alert_condition" "alert" {
  policy_id            = newrelic_alert_policy.alert.id
  type                 = var.type
  name                 = var.name
  value_function       = var.value_function
  violation_time_limit = var.violation_time_limit

  nrql {
    query             = var.query
    evaluation_offset = var.evaluation_offset
  }

  dynamic "critical" {
    for_each = var.critical
    content {
      operator              = critical.value.operator
      threshold             = critical.value.threshold
      threshold_duration    = critical.value.threshold_duration
      threshold_occurrences = critical.value.threshold_occurrences
    }
  }

  dynamic "warning" {
    for_each = var.warning
    content {
      operator              = warning.value.operator
      threshold             = warning.value.threshold
      threshold_duration    = warning.value.threshold_duration
      threshold_occurrences = warning.value.threshold_occurrences
    }
  }
}
