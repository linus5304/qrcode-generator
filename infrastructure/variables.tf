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

variable "subnet_ids" {
  description = "list of subnet ids for eks"
  type        = list(string)
}
