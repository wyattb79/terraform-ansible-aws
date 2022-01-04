resource "aws_internet_gateway" "ansible-gw" {
  vpc_id = aws_vpc.ansible-vpc.id

  tags = {
    Name = "main"
  }
}
