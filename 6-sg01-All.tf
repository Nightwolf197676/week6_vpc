resource "aws_security_group" "web-sg" {
  name        = "web-sg"
  description = "Security group allowing http, RDP and ssh"
  vpc_id      = aws_vpc.week6.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "web-sg"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }

}





resource "aws_security_group" "week6-sg02-LB01" {
  name        = "week6-sg02-LB01"
  description = "week6-sg02-LB01"
  vpc_id      = aws_vpc.week6.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "week6-sg02-LB01"
    Service = "application1"
    Owner   = "Larry"
    Country = "Phillipines"
  }

}