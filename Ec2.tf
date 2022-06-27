# creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  count = 1
  key_name = "aaa"
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  tags = {
   Name = "My Public Instance"
}
}
# creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  count = 1
  key_name = "aaa"
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  subnet_id = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true
  tags = {
    Name = "My Public Instance 1"
}
}
