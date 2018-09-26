resource "aws_glue_connection" "glue_connection_vpc" {
  count = "${var.create ? 1 : 0}"

  name = "${var.name}"

  connection_properties = {
    JDBC_CONNECTION_URL = "${var.url}"
    USERNAME            = "${var.user}"
    PASSWORD            = "${var.pass}"
  }

  physical_connection_requirements {
    security_group_id_list = "${var.sg_ids}"
    subnet_id              = "${var.subnet}"
    availability_zone      = "${var.azs}"
  }

  catalog_id      = "${var.catalog_id}"
  connection_type = "${var.type}"
  description     = "${var.description}"
  match_criteria  = "${var.criteria}"
}
