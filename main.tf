resource "aws_lightsail_instance" "qrcode" {
  name = "qrcode"
  availability_zone = "us-east-1a"
  blueprint_id = "amazon_linux_2"
  bundle_id = "nano_3_0"
  user_data = file("inventory.sh")
  tags = {
    name = "studygroup"
  }
}