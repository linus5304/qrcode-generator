output "username" {
  value = aws_lightsail_instance.qrcode.username
}

output "public_ip" {
  value = aws_lightsail_instance.qrcode.public_ip_address
}