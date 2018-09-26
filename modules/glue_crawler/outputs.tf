output "s3_name" {
  value = "${join(",", aws_glue_crawler.glue_crawler_s3.*.id)}"
}

output "s3_db" {
  value = "${join(",", aws_glue_crawler.glue_crawler_s3.*.database_name)}"
}
