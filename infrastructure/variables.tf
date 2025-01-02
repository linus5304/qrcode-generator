variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "eks cluster name"
  type        = string
  default     = "qrcode-cluster"
}
