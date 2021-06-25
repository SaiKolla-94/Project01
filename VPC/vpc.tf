# Internet VPC
resource "aws_vpc" "project01vpc" {
  cidr_block           = "10.0.0.0/24"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "project01vpc"
  }
}

# Subnets


resource "aws_subnet" "project01-privatesubnet-1" {
  vpc_id                  = aws_vpc.project01vpc.id
  cidr_block              = "10.0.0.0/28"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "project01-privatesubnet-1"
  }
}

resource "aws_subnet" "project01-privatesubnet-2" {
  vpc_id                  = aws_vpc.project01vpc.id
  cidr_block              = "10.0.0.17/28"
  map_public_ip_on_launch = "false"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "project01-privatesubnet-2"
  }
}



# Internet GW
resource "aws_internet_gateway" "project01-gw" {
  vpc_id = aws_vpc.project01vpc.id

  tags = {
    Name = "project01-gw"
  }
}

# route tables

# route associations public
