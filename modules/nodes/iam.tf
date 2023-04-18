data "aws_iam_policy_document" "eks_node_role" {
  version = "2012-10-17"

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "eks_nodes_roles" {
  name =  format("%s-eks-nodes", var.cluster_name)
  assume_role_policy = data.aws_iam_policy_document.eks_node_role.json
}

resource "aws_iam_role_policy_attachment" "route53" {
    role = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_iam_role_policy_attachment" "cni_policy" {
  role = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}
  
resource "aws_iam_role_policy_attachment" "node_service" {
  role = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "ecr" {
  role = aws_iam_role.eks_nodes_roles.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}


resource "aws_iam_role_policy_attachment" "cloud-watch" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
  role = aws_iam_role.eks_nodes_roles.name
}

resource "aws_iam_role_policy_attachment" "eks-ssm"{
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
  role = aws_iam_role.eks_nodes_roles.name

}

#resource "aws_eks_addon" "aws_ebs_csi_driver" {
#  cluster_name = var.eks_cluster.name
#  addon_name = "aws-ebs-csi-driver"
#  addon_version = "v1.16.1-eksbuild.1" 
#  resolve_conflicts    = "OVERWRITE"
#  
#}
#
#resource "aws_eks_addon" "core_dns" {
#  cluster_name = var.eks_cluster.name
#  addon_name = "coredns"
#  addon_version = "v1.9.3-eksbuild.2" 
#  resolve_conflicts    = "OVERWRITE"
#  
#}
#
#resource "aws_eks_addon" "kube_proxy" {
#  cluster_name      = var.eks_cluster.name
#  addon_name        = "kube-proxy"
#  addon_version     = "v1.25.6-eksbuild.1"
#  resolve_conflicts    = "OVERWRITE"
#}
#