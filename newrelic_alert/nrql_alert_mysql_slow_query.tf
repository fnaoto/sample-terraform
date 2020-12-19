module "nrql_alert_mysql_slow_query" {
  source         = "../modules/newrelic/nrql_alert"
  name           = "${local.name} slow query"
  type           = "static"
  value_function = "sum"

  query = <<EOF
   SELECT average(apm.service.datastore.operation.duration) * 1000 
   FROM Metric 
   WHERE  (appName = '${var.apm_app_name}') 
   AND ((metricTimesliceName = 'Datastore/operation/MySQL/show' AND datastoreType = 'MySQL')) 
   FACET `metricTimesliceName`
EOF

  critical = [
    {
      operator              = "above"
      threshold             = 10
      threshold_duration    = 300
      threshold_occurrences = "at_least_once"
    }
  ]

  warning = [
    {
      operator              = "above"
      threshold             = 5
      threshold_duration    = 300
      threshold_occurrences = "at_least_once"
    }
  ]
}
