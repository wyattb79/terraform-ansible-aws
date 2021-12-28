resource "aws_security_group" "ansible-master-sg-rule" {
  type = "ingress"
  from_port = 0
  to_port = 0
  protocol = -1
  security_group_id = aws_security_group.ansible-master-sg.id
  source_security_group_id = aws_security_group.ansible-node-sg.id
}
