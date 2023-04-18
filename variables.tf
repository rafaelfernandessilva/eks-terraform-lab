# var  cluster name    #
variable "cluster_name" {
  default     = "k8s-infra-test"
  description = "Nome do Cluster"
}


# variable region     #
variable "aws_region" {
  default     = "us-east-1"
  description = "Região da aws"
}


# variable cidr block #
variable "cidr_block" {
  default     = "10.10.0.0/16"
  description = "Cidr Block"
}


# variable k8s version #

variable "k8s_version" {
  default     = "1.25"
  description = "Versão do k8s"
}


variable "nodes_instance_sizes" {
  default = "t3.medium"

  description = "Valor instance sizes para utilizar nos nodes"
}


variable "ami_version" {
  default     = "ami-0c9424a408e18bcc9"
  description = "Definir ami utilizada no cluster eks"
}

variable "asg_min" {
  default = 4
}

variable "asg_max" {
  default = 6
}

variable "asg_desired" {
  default = 4
}

variable "key_ssh" {
  default = "k8s-test"
}