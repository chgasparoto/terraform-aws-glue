resource "aws_glue_trigger" "glue_job_trigger" {
  count = "${var.create ? 1 : 0}"

  name     = "${var.name}"
  schedule = "${var.schedule}"
  type     = "${var.type}"

  enabled     = "${var.enabled}"
  description = "${var.description}"

  actions {
    job_name  = "${var.job_name}"
    arguments = "${var.arguments}"
    timeout   = "${var.timeout}"
  }
}
