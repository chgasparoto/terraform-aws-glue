# ---- aws_glue_connection
variable "create_connection" {
  default = true
}

variable "conn_has_vpc" {
  default = true
}

variable "conn_name" {
  default = ""
}

variable "conn_url" {
  default = ""
}

variable "conn_user" {
  default = ""
}

variable "conn_pass" {
  default = ""
}

variable "conn_sg_ids" {
  default = ""
}

variable "conn_subnet" {
  default = ""
}

variable "conn_azs" {
  default = ""
}

variable "conn_catalog_id" {
  default = ""
}

variable "conn_type" {
  default = "JDBC"
}

variable "conn_description" {
  default = ""
}

variable "conn_criteria" {
  type    = "list"
  default = []
}

# ---- aws_glue_catalog_database
variable "create_database" {
  default = true
}

variable "db_name" {
  default = ""
}

variable "db_description" {
  default = ""
}

variable "db_catalog_id" {
  default = ""
}

variable "db_location_uri" {
  default = ""
}

variable "db_params" {
  type    = "map"
  default = {}
}

# ---- aws_glue_crawler
variable "create_crawler" {
  default = true
}

variable "crawl_name" {
  default = ""
}

variable "crawl_role" {
  default = ""
}

variable "crawl_database" {
  default = ""
}

variable "crawl_schedule" {
  default = ""
}

variable "crawl_table_prefix" {
  default = ""
}

variable "crawl_s3_path" {
  default = ""
}

# ---- aws_glue_job
variable "create_job" {
  default = true
}

variable "job_name" {
  default = ""
}

variable "job_role_arn" {
  default = ""
}

variable "job_connections" {
  type    = "list"
  default = []
}

variable "job_dpu" {
  default = 2
}

variable "job_script" {
  default = ""
}

variable "job_language" {
  default = "python"
}

variable "job_bookmark" {
  default = "disabled"
}

variable "job_temp_dir" {
  default = ""
}

variable "job_arguments" {
  type    = "map"
  default = {}
}

# ---- aws_glue_trigger
variable "create_trigger" {
  default = true
}

variable "trigger_name" {
  default = ""
}

variable "trigger_schedule" {
  default = ""
}

variable "trigger_job" {
  default = ""
}

variable "trigger_type" {
  default = "SCHEDULED"
}

variable "trigger_enabled" {
  default = true
}

variable "trigger_description" {
  default = ""
}

variable "trigger_arguments" {
  type    = "map"
  default = {}
}

variable "trigger_timeout" {
  default = 2880
}