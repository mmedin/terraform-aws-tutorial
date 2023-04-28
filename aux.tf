# # 0. Aux resources

resource "random_id" "server" {
  byte_length = 4
}

data "http" "myip" {
  url = "https://ifconfig.me/ip"
}
