resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.week6.id

  tags = {
    Name  = "week6"
    Owner = "Larry"
  }
}