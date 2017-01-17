resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  tags = "${merge(var.tags, map("Name", format("%s", var.name)))}"

  lifecycle {
    create_before_destroy = true
  }
}
