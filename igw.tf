# creating Internet Gateway
resource "aws_internet_gateway" "jyothikaigw" {
  vpc_id = "${aws_vpc.jyothika.id}"
   tags ={
     Name ="IGW"
}
}
