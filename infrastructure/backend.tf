terraform {
  backend "s3" {
    bucket         = "qrcode-tf-state-1234"
    key            = "terraform/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "qrcode-tf-state-lock"
    encrypt        = true
  }
}
