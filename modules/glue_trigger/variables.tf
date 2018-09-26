variable "create" {
  default = true
}

variable "name" {}

variable "type" {
  description = "It can be CONDITIONAL, ON_DEMAND, and SCHEDULED."
  default     = "SCHEDULED"
}

variable "schedule" {}

variable "enabled" {
  default = true
}

variable "description" {
  default = ""
}

variable "job_name" {}

variable "arguments" {
  type    = "map"
  default = {}
}

variable "timeout" {
  default = 2880
}
