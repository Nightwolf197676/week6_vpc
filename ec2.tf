resource "aws_instance" "webapp" {
  instance_type               = "t3.micro"
  availability_zone           = "us-east-1a"
  ami                         = "ami-0341d95f75f311023"
  key_name                    = "oct11class7-Linux"
  user_data = file("user_data.sh")
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public-us-east-1a.id
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp3"

  }
}
