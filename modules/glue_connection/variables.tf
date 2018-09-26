variable "create" {
  default = true
}

variable "name" {}
variable "url" {}

variable "user" {}

variable "pass" {}

variable "sg_ids" {
  default = ""
}

variable "subnet" {
  default = ""
}

variable "azs" {
  default = ""
}

variable "catalog_id" {
  default = ""
}

variable "type" {
  default = "JDBC"
}

variable "description" {
  default = ""
}

variable "criteria" {
  type    = "list"
  default = []
}
