output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs."
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "List of public subnet IDs."
  value       = module.vpc.public_subnets
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = module.eks_al2023.cluster_endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "The certificate authority data for the EKS cluster."
  value       = module.eks_al2023.cluster_certificate_authority_data
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster."
  value       = module.eks_al2023.cluster_name
}

output "eks_node_group_role_arn" {
  description = "The ARN of the EKS node group IAM role."
  value       = module.eks_al2023.node_groups["example"].iam_role_arn
}
