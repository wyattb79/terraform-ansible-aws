resource "aws_main_route_table_association" "ansible-route-association" {
  vpc_id         = "${aws_vpc.ansible-vpc.id}"
  route_table_id = "${aws_route_table.ansible-route-table.id}"
}
