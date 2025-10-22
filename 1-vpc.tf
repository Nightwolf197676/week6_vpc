# this  makes  vpc.id which is aws_vpc.week6.id
resource "aws_vpc" "week6" {
  cidr_block = "10.10.0.0/16"
  enable_dns_support   = true # Enables DNS resolution
  enable_dns_hostnames = true # Enables DNS hostnames for public IPs
  tags = {
    Name    = "week6"
    Owner   = "Larry_Harris"
    Country = "Phillipines"
  }
}