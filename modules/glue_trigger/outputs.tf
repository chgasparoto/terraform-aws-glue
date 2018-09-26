output "name" {
  value = "${join(",", aws_glue_trigger.glue_job_trigger.*.name)}"
}

output "type" {
  value = "${join(",", aws_glue_trigger.glue_job_trigger.*.type)}"
}

output "schedule" {
  value = "${join(",", aws_glue_trigger.glue_job_trigger.*.schedule)}"
}

output "actions" {
  value = "${aws_glue_trigger.glue_job_trigger.*.actions}"
}
