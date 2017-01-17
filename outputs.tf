output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "vpc_default_security_group" {
  value = "${aws_vpc.vpc.default_security_group_id}"
}
