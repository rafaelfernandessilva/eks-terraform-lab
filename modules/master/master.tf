resource "aws_eks_cluster" "eks_cluster" {
  
  name = var.cluster_name
  version = var.k8s_version
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    security_group_ids = [
        aws_security_group.sg_cluster.id
    ]
    subnet_ids = [
        var.private_subnet_1.id,
        var.private_subnet_2.id
    ]
  }
  tags = {
        "kubernetes.io/cluster/${var.cluster_name}" = "shared",
        Name = "${var.cluster_name}"
  }



}
