resource "aws_vpc" "ansible-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  id = "ansible-vpc"
}
