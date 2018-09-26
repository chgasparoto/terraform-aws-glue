variable "create" {
  default = true
}

variable "name" {}
variable "db" {}

variable "description" {
  default = ""
}

variable "role" {}

variable "schedule" {
  default = ""
}

variable "table_prefix" {}

variable "s3_path" {}

variable "s3_exclusions" {
  type    = "list"
  default = []
}
