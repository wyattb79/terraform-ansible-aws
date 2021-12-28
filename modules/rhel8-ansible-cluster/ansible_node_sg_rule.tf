resource "aws_security_group_rule" "allow-ssh-from-cluster" {

  type = ingress
  from_port = 22 
  to_port = 22
  protocol = "tcp"
  security_group_id = aws_security_group.ansible-node-sg.id
  source_security_group_id = aws_security_group.ansible-master-sg.id
}
