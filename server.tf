# # 9. Create Ubuntu server
resource "aws_instance" "web-server-instance" {
  ami               = "ami-06c4532923d4ba1ec" # Ubuntu 20.04
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  key_name          = "arq-labs"

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web-server-nic.id
  }

  user_data = file("install_apache.sh")

  tags = {
    Name = "web-server-${random_id.server.hex}"
  }
}
