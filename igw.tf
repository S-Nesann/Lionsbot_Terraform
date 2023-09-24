#IGW for Asia

resource "aws_internet_gateway" "igw-1" {
  vpc_id = aws_vpc.my-vpc-1.id

  tags = {
    Name = "igw-1"
  }
}

#IGW for Europe

resource "aws_internet_gateway" "igw-2" {
  vpc_id = aws_vpc.my-vpc-2.id

  tags = {
    Name = "igw-2"
  }
}