data "aws_subnets" "eks" {
  filter {
    name   = "tag:Name"
    values = ["public-subnet-1", "public-subnet-2", "public-subnet-3"]
  }

  filter {
    name   = "vpc-id"
    values = [aws_vpc.main.id]
  }
}

output "eks_subnet_ids" {
  value = data.aws_subnets.eks.ids
}
