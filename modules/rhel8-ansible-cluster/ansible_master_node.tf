resource "aws_instance" "ansible_master" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = "${file("ansible-master-setup.sh")}"

  vpc_security_group_ids = [ "${aws_security_group.ansible-master-sg.id}" ]

  subnet_id = "${aws_subnet.ansible-subnet.id}"
  tags = {
    Name = "AnsibleMaster"
  }
}
