resource "aws_route_table" "ansible-route-table" {
  vpc_id = aws_vpc.ansible-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ansible-gw.id
  }
}
