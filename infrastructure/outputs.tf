output "cluster_endpoint" {
  description = "eks cluster endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "eks cluster name"
  value       = aws_eks_cluster.main.name
}

output "eks_subnet_ids" {
  description = "List of subnet IDs for EKS cluster."
  value       = aws_subnet.public[*].id
}
