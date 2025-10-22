resource "aws_instance" "webapp" {
  instance_type               = "t3.micro"
  availability_zone           = "us-east-1a"
  ami                         = "ami-0341d95f75f311023"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.public-us-east-1a.id
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp3"

  }
  user_data = <<-EOF
    #!/b#!/bin/bash
    # Use this for your user data (script from top to bottom)
    # install httpd (Linux 2 version)
    
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    echo "
    <!doctype html>
    <html lang=\"en\" class=\"h-100\">
    <head>
    <title>Details for EC2 instance</title>
    </head>
    <body>
    <div>
    <h1>AWS Instance Details</h1>
    <h1>Samurai Katana</h1>

    <br>
    # insert an image or GIF
    <img src="https://www.w3schools.com/images/w3schools_green.jpg" alt="W3Schools.com">
    <br>
    </div>
    </body>
    </html>
    " > /var/www/html/index.html

    # Clean up the temp files
    rm -f /tmp/local_ipv4 /tmp/az /tmp/macidin/bash
    sudo service apache2 start
    EOF
}