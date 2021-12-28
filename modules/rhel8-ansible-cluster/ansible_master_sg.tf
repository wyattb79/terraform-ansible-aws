resource "aws_security_group" "ansible-master-sg" {
  name = "ansible-master-sg"

  vpc_id = "${aws_vpc.ansible-vpc.id}"

  ingress {
    from_port = 0
    to_port = 0
    protocol = -1
    security_groups = [ "${aws_security_group.ansible-master-sg.id}" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
