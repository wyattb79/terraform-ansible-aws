resource "aws_subnet" "ansible-subnet" {
  cidr_block = "${cidrsubnet(aws_vpc.ansible-vpc.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.ansible-vpc.id}"
  map_public_ip_on_launch = true
  tags = {
    Name = "ansible-subnet"
  }
}
