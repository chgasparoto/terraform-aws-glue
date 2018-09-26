terraform {
  required_version = ">= 0.10.3" # introduction of Local Values configuration language feature
}

module "glue_connection" {
  source = "./modules/glue_connection"

  create = "${var.create_connection}"

  name = "${var.conn_name}"
  url  = "${var.conn_url}"
  user = "${var.conn_user}"
  pass = "${var.conn_pass}"

  sg_ids = "${var.conn_sg_ids}"
  subnet = "${var.conn_subnet}"
  azs    = "${var.conn_azs}"

  type        = "${var.conn_type}"
  catalog_id  = "${var.conn_catalog_id}"
  description = "${var.conn_description}"
  criteria    = "${var.conn_criteria}"
}

#######################
# Glue Database Catalog
#######################
module "glue_database" {
  source = "./modules/glue_database"

  create = "${var.create_database}"

  name = "${var.db_name}"

  description  = "${var.db_description}"
  catalog      = "${var.db_catalog_id}"
  location_uri = "${var.db_location_uri}"
  params       = "${var.db_params}"
}

#######################
# Glue Crawler
#######################
module "glue_crawler" {
  source = "./modules/glue_crawler"

  create = "${var.create_crawler}"

  name = "${var.crawl_name}"
  db   = "${var.crawl_database}"
  role = "${var.crawl_role}"

  schedule     = "${var.crawl_schedule}"
  table_prefix = "${var.crawl_table_prefix}"
  s3_path      = "${var.crawl_s3_path}"
}

#######################
# Glue Job
#######################
module "glue_job" {
  source = "./modules/glue_job"

  create = "${var.create_job}"

  name            = "${var.job_name}"
  role_arn        = "${var.job_role_arn}"
  script_location = "${var.job_script}"

  connections = ["${var.job_connections}"]
  dpu         = "${var.job_dpu}"
  arguments   = "${var.job_arguments}"
  language    = "${var.job_language}"
  bookmark    = "${var.job_bookmark}"
  temp_dir    = "${var.job_temp_dir}"
}

#######################
# Glue Job Trigger
#######################
module "glue_trigger" {
  source = "./modules/glue_trigger"

  create = "${var.create_trigger}"

  name     = "${var.trigger_name}"
  schedule = "${var.trigger_schedule}"
  job_name = "${var.trigger_job}"

  type        = "${var.trigger_type}"
  enabled     = "${var.trigger_enabled}"
  description = "${var.trigger_description}"
  arguments   = "${var.trigger_arguments}"
  timeout     = "${var.trigger_timeout}"
}
