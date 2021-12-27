resource "aws_subnet" "ansible-subnet" {
  cidr_block = "${cidrsubnet(aws_vpc.ansible-vpc.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.ansible-vpc.id}"
  tags = {
    Name = "ansible-subnet"
  }
}
