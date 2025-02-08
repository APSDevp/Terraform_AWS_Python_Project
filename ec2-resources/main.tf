resource "aws_instance" "webserver-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.public_subnet_id
  key_name = var.keypair
  tags = {
    Name = "web_server-ec2"
  }
user_data = <<-EOF
#!/bin/bash
sudo apt-get update
sudo apt install python-is-python3
sudo python -m http.server 80
EOF
}
