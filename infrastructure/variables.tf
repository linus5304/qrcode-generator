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

variable "ecr_registry" {
  description = "ecr registry"
  type        = string
}

variable "ecr_repository_api" {
  description = "ecr repo api"
  type        = string
}

variable "ecr_repository_frontend" {
  description = "ecr repo api"
  type        = string
}

variable "image_tag" {
  description = "image tag"
  type        = string
}
