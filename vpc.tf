resource "aws_vpc" "jyothika" {
  cidr_block       = "140.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tf-vpc"
  }
}
