# Creating 1st wen subnet
resource "aws_subnet" "public-subnet-1" {
  vpc_id = "${aws_vpc.jyothika.id}"
  cidr_block = "140.0.10.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    Name = "tf web subnet 1"
  }
}
# Creating 2nd web subnet
resource "aws_subnet" "public-subnet-2" {
  vpc_id = "${aws_vpc.jyothika.id}"
  cidr_block = "140.0.20.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2b"
  tags = {
    Name = "tf Web Subnet 2"
  }
}
# Creating 1st application subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id = "${aws_vpc.jyothika.id}"
  cidr_block = "140.0.30.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-2a"
  tags = {
    Name = "tf Application Subnet 1"
  }
}

# Creating 2nd application subnet
resource "aws_subnet" "application-subnet-2" {
  vpc_id = "${aws_vpc.jyothika.id}"
  cidr_block = "140.0.40.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-2b"
  tags = {
    Name = "tf Application Subnet 2"
  }
}
# Create Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id = "${aws_vpc.rishi.id}"
  cidr_block = "140.0.50.0/24"
  availability_zone = "us-east-2a"
  tags = {
    Name = "tf Database Subnet 1"
  }
}
# Create Database Private Subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id = "${aws_vpc.rishi.id}"
  cidr_block = "140.0.60.0/24"
  availability_zone = "us-east-2a"
  tags = {
    Name = "tf Database Subnet 1"
  }
}