#Routes for Asia region

resource "aws_route_table" "private_1" {
  vpc_id = aws_vpc.my-vpc-1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.natgw-1.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private_1"
  }
}
resource "aws_route_table" "public-1" {
  vpc_id = aws_vpc.my-vpc-1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw-1.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public-1"
  }
}
resource "aws_route_table_association" "private-asia-1a" {
  subnet_id      = aws_subnet.private-asia-1a.id
  route_table_id = aws_route_table.private-1.id
}

resource "aws_route_table_association" "private-asia-1b" {
  subnet_id      = aws_subnet.private-asia-1b.id
  route_table_id = aws_route_table.private-1.id
}

resource "aws_route_table_association" "public-asia-1a" {
  subnet_id      = aws_subnet.public-asia-1a.id
  route_table_id = aws_route_table.public-1.id
}

resource "aws_route_table_association" "public-asia-1b" {
  subnet_id      = aws_subnet.public-asia-1b.id
  route_table_id = aws_route_table.public-1.id
}

# Routes for Europe region

resource "aws_route_table" "private_2" {
  vpc_id = aws_vpc.my-vpc-2.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.natgw-2.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private_2"
  }
}
resource "aws_route_table" "public-2" {
  vpc_id = aws_vpc.my-vpc-2.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw-2.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public-2"
  }
}
resource "aws_route_table_association" "private-europe-1a" {
  subnet_id      = aws_subnet.private-europe-1a.id
  route_table_id = aws_route_table.private-2.id
}

resource "aws_route_table_association" "private-asia-1b" {
  subnet_id      = aws_subnet.private-europe-1b.id
  route_table_id = aws_route_table.private-2.id
}

resource "aws_route_table_association" "public-europe-1a" {
  subnet_id      = aws_subnet.public-europe-1a.id
  route_table_id = aws_route_table.public-2.id
}

resource "aws_route_table_association" "public-europe-1b" {
  subnet_id      = aws_subnet.public-europe-1b.id
  route_table_id = aws_route_table.public-1.id
}
