output "cluster_endpoint" {
  description = "eks cluster endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "eks cluster name"
  value       = aws_eks_cluster.main.name
}
