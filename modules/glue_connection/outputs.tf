output "name" {
  value = "${join(",", aws_glue_connection.glue_connection_vpc.*.name)}"
}

output "type" {
  value = "${join(",", aws_glue_connection.glue_connection_vpc.*.type)}"
}

output "vpc_settings" {
  value = "${join(",", aws_glue_connection.glue_connection_vpc.*.physical_connection_requirements)}"
}

output "catalog" {
  value = "${join(",", aws_glue_connection.glue_connection_vpc.*.catalog_id)}"
}
