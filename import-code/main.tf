
resource "aws_instance" "web" {
  ami                                  = "ami-0195204d5dce06d99"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1d"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress"
  monitoring                           = false
  security_groups                      = ["launch-wizard-6"]
  subnet_id                            = "subnet-00831ed2e814c9b67"
  tags = { 
    Name = "created by terraform"
  }
}