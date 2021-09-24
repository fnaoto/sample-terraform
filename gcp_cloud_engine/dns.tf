module "dns_zone" {
  source      = "../modules/gcp/dns_zone"
  name        = local.name
  network_url = module.subnet.google_compute_network_id
}

module "dns_record_for_database" {
  source       = "../modules/gcp/dns_record"
  name         = "database.${module.dns_zone.google_dns_managed_zone_dns_name}"
  managed_zone = module.dns_zone.google_dns_managed_zone_dns_name
  rrdatas      = [module.sql.google_sql_database_instance_public_ip_address]
}

module "dns_record_for_redis" {
  source       = "../modules/gcp/dns_record"
  name         = "redis.${module.dns_zone.google_dns_managed_zone_dns_name}"
  managed_zone = module.dns_zone.google_dns_managed_zone_dns_name
  rrdatas      = [module.redis.google_redis_instance_host]
}
