#Pri and Pub Subnets for Asia region

resource "aws_subnet" "private-asia-1a" {
  vpc_id            = aws_vpc.my-vpc-1.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-southeast-1a"

  tags = {
    "Name" = "private-asia-1a"
  }
}
resource "aws_subnet" "private-asia-1b" {
  vpc_id            = aws_vpc.my-vpc-1.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-southeast-1b"

  tags = {
    "Name" = "private-asia-1b"
  }
}
resource "aws_subnet" "public-asia-1a" {
  vpc_id            = aws_vpc.my-vpc-1.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-southeast-1a"

  tags = {
    "Name" = "public-asia-1a"
  }
}
resource "aws_subnet" "public-asia-1b" {
  vpc_id            = aws_vpc.my-vpc-1.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-southeast-1b"

  tags = {
    "Name" = "public-asia-1b"
  }
}

#Pri and Pub Subnets for Europe region


resource "aws_subnet" "private-europe-1a" {
  vpc_id            = aws_vpc.my-vpc-2.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    "Name" = "private-europe-1a"
  }
}
resource "aws_subnet" "private-europe-1b" {
  vpc_id            = aws_vpc.my-vpc-2.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    "Name" = "private-europe-1b"
  }
}
resource "aws_subnet" "public-europe-1a" {
  vpc_id            = aws_vpc.my-vpc-2.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    "Name" = "public-europe-1a"
  }
}
resource "aws_subnet" "public-europe-1b" {
  vpc_id            = aws_vpc.my-vpc-2.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    "Name" = "public-europe-1b"
  }
}
