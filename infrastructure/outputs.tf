output "vpc_id" {
  description = "id of vpc"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "list of public subnet ids"
  value       = aws_subnet.public[*].id
}

output "eks_cluster_id" {
  description = "id of the eks cluster."
  value       = aws_eks_cluster.main.id
}

output "eks_cluster_endpoint" {
  description = "eks cluster endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "eks cluster name"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_certificate_authority_data" {
  description = "certificate authority data for the eks cluster"
  value       = aws_eks_cluster.main.certificate_authority[0].data
}
