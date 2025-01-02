cluster_name            = "qrcode-cluster"
ecr_registry            = "590184100107.dkr.ecr.us-east-1.amazonaws.com"
ecr_repository_api      = "api"
ecr_repository_frontend = "frontend"
image_tag               = "v1.0.0"
tags = {
  Terraform   = "true",
  Environment = "production"
}
