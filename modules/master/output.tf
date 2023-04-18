output "eks_cluster" {
  value = aws_eks_cluster.eks_cluster
  description = "Output Cluster EKS"
}

output "eks_security_group" {
  value = aws_security_group.sg_cluster
    description = "Output security group"
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}