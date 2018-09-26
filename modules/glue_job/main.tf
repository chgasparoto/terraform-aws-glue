locals {
  default_arguments = {
    "--job-language"        = "${var.language}"
    "--job-bookmark-option" = "${lookup(var.bookmark_options, var.bookmark)}"
    "--TempDir"             = "${var.temp_dir}"
  }
}

resource "aws_glue_job" "glue_job" {
  count = "${var.create ? 1 : 0}"

  name               = "${var.name}"
  role_arn           = "${var.role_arn}"
  connections        = ["${var.connections}"]
  allocated_capacity = "${var.dpu}"

  command {
    script_location = "${var.script_location}"
  }

  # https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
  default_arguments = "${merge(local.default_arguments, var.arguments)}"

  description = "${var.description}"
  max_retries = "${var.max_retries}"
  timeout     = "${var.timeout}"

  execution_property {
    max_concurrent_runs = "${var.max_concurrent}"
  }
}
