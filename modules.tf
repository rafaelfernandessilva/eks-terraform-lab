module "network" {
  source = "./modules/network"

  cluster_name = var.cluster_name
  aws_region   = var.aws_region
  cidr_block   = var.cidr_block
}

module "master" {
  source       = "./modules/master"
  cluster_name = var.cluster_name
  aws_region   = var.aws_region
  k8s_version  = var.k8s_version

  cluster_k8s      = module.network.cluster_k8s
  private_subnet_1 = module.network.private_subnet_1
  private_subnet_2 = module.network.private_subnet_2
}

module "nodes" {
  source = "./modules/nodes"


  cluster_name         = var.cluster_name
  aws_region           = var.aws_region
  k8s_version          = var.k8s_version
  nodes_instance_sizes = var.nodes_instance_sizes
  #auto_scale_options   = var.auto_scale_options
  key_ssh     = var.key_ssh
  ami_version = var.ami_version
  asg_min     = var.asg_min
  asg_max     = var.asg_max
  asg_desired = var.asg_desired


  cluster_k8s      = module.network.cluster_k8s
  private_subnet_1 = module.network.private_subnet_1
  private_subnet_2 = module.network.private_subnet_2


  eks_cluster        = module.master.eks_cluster
  eks_security_group = module.master.eks_security_group


}
