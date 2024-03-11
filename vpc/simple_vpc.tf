provider "aws" {
  region                   = "sa-east-1"
  profile                  = "configs"
  shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
}




resource "aws_vpc" "this_vpc" {
  cidr_block = "12.11.0.0/16"
  tags = {
    Name = "this_vpc"
  }

}

resource "aws_subnet" "this_subnet_pub" {
  vpc_id     = aws_vpc.this_vpc.id
  cidr_block = "12.11.0.0/17"
  tags = {
    Name = "pub_subnet"
  }

}

resource "aws_subnet" "this_subnet_private1" {
  vpc_id     = aws_vpc.this_vpc.id
  cidr_block = "12.11.128.0/18"
  tags = {
    Name = "pri_subnet1"
  }

}

resource "aws_subnet" "this_subnet_private2" {
  vpc_id     = aws_vpc.this_vpc.id
  cidr_block = "12.11.192.0/19"
  tags = {
    Name = "pri_subnet2"
  }

}

resource "aws_internet_gateway" "this_igw" {
  vpc_id = aws_vpc.this_vpc.id
  tags = {
    Name = "igw"
  }
}

resource "aws_default_route_table" "example" {
  default_route_table_id = aws_vpc.this_vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this_igw.id
  }
}

resource "aws_route_table_association" "this_rw_association" {
  subnet_id      = aws_subnet.this_subnet_pub.id
  route_table_id = aws_default_route_table.example.id
}