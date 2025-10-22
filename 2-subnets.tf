#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.week6.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.week6.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}


resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.week6.id
  cidr_block              = "10.10.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

#these are for private
resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-s-east-1a"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}


resource "aws_subnet" "private_subnet3" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

resource "aws_subnet" "private_subnet4" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.21.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "database1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

resource "aws_subnet" "private_subnet5" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.22.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "database1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}

resource "aws_subnet" "private_subnet6" {
  vpc_id            = aws_vpc.week6.id
  cidr_block        = "10.10.23.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "database1"
    Owner   = "Larry"
    Country = "Phillipines"
  }
}