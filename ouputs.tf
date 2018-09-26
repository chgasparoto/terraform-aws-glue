output "conn_name" {
  value = "${module.glue_connection.name}"
}

output "conn_type" {
  value = "${module.glue_connection.type}"
}

output "conn_vpc_settings" {
  value = "${module.glue_connection.vpc_settings}"
}

output "conn_catalog_id" {
  value = "${module.glue_connection.catalog}"
}

output "crawler_s3_name" {
  value = "${module.glue_crawler.s3_name}"
}

output "crawler_s3_db" {
  value = "${module.glue_crawler.s3_db}"
}

output "database_name" {
  value = "${module.glue_database.name}"
}

output "job_name" {
  value = "${module.glue_job.name}"
}

output "job_dpu" {
  value = "${module.glue_job.dpu}"
}

output "trigger_name" {
  value = "${module.glue_trigger.name}"
}

output "trigger_schedule" {
  value = "${module.glue_trigger.schedule}"
}