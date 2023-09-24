#Elastic IP and NatGW for Asia region

resource "aws_eip" "nat-1" {
  vpc = true

  tags = {
    Name = "nat-1"
  }
}
resource "aws_nat_gateway" "natgw-1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-asia-1a.id

  tags = {
    Name = "natgw-1"
  }

  depends_on = [aws_internet_gateway.igw-1]
}

#Elastic IP and NatGW for europe region


resource "aws_eip" "nat-2" {
  vpc = true

  tags = {
    Name = "nat-2"
  }
}

resource "aws_nat_gateway" "natgw-2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-europe-1a.id

  tags = {
    Name = "natgw-2"
  }

  depends_on = [aws_internet_gateway.igw-2]
}