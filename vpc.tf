#VPC for Asia 

resource "aws_vpc" "my-vpc-1" {
  cidr_block = "10.1.0.0/16"
  provider = aws.my-asia
  tags = {
    "Name" = "my-vpc-1"
  }
}

#VPC for Europe 

resource "aws_vpc" "my-vpc-2" {
  cidr_block = "10.1.0.0/16"
  provider = aws.my-europe
  tags = {
    "Name" = "my-vpc-2"
  }
}