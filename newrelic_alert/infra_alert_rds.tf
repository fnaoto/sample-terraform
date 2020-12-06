module "infra_alert_rds_cpu_average" {
  source               = "../modules/newrelic/infra_alert"
  name                 = "${local.name} rds_cpu_average"
  event                = "DatastoreSample"
  select               = "provider.cpuUtilization.Average"
  where                = "displayName = ${var.project}"
  integration_provider = "RdsDbInstance"

  critical = [
    {
      duration      = 5
      value         = 80 # %
      time_function = "any"
    }
  ]

  warning = [
    {
      duration      = 5
      value         = 60 # %
      time_function = "any"
    }
  ]
}

module "infra_alert_rds_storage_space_average" {
  source               = "../modules/newrelic/infra_alert"
  name                 = "${local.name} rds_storage_space_average"
  event                = "DatastoreSample"
  select               = "provider.freeStorageSpaceBytes.Average"
  where                = "displayName = ${var.project}"
  integration_provider = "RdsDbInstance"

  comparison = "below"

  critical = [
    {
      duration      = 5
      value         = 53687063712 # 50GB
      time_function = "any"
    }
  ]

  warning = [
    {
      duration      = 5
      value         = 107374127424 # 100GB
      time_function = "any"
    }
  ]
}

module "infra_alert_rds_freeable_memory_average" {
  source               = "../modules/newrelic/infra_alert"
  name                 = "${local.name} rds_freeable_memory_average"
  event                = "DatastoreSample"
  select               = "provider.freeableMemoryBytes.Average"
  where                = "displayName = ${var.project}"
  integration_provider = "RdsDbInstance"

  comparison = "below"

  critical = [
    {
      duration      = 5
      value         = 1073741824 # 1GB
      time_function = "any"
    }
  ]

  warning = [
    {
      duration      = 5
      value         = 2147483648 # 2GB
      time_function = "any"
    }
  ]
}
