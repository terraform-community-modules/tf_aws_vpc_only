variable "name" {
  default = "vpc"
}

variable "cidr" {}

variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}

variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
