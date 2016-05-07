variable "name" {
  default = "vpc"
}
variable "cidr" {
}
variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}
variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}

resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  tags {
    Name = "${var.name}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}
output "vpc_cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}
output "vpc_default_security_group" {
  value = "${aws_vpc.vpc.default_security_group_id}"
}
