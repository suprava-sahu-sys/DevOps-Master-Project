output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "eks_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}
