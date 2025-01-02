variable "ecr_registry" {
  description = "The ECR registry URL."
  type        = string
}

variable "ecr_repository_api" {
  description = "The ECR repository name for the API."
  type        = string
}

variable "ecr_repository_frontend" {
  description = "The ECR repository name for the Frontend."
  type        = string
}

variable "image_tag" {
  description = "The Docker image tag to deploy."
  type        = string
}
