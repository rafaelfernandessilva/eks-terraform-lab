variable "aws_region" {
  description = "variável para definir a região"
}

variable "cluster_name" {
  description = "variável nome cluster"
}

variable "k8s_version" {
  description = "variável para definir a versão do k8s"
}

variable "cluster_k8s" {
  description = "variável vpc cluster"
}

variable "private_subnet_1" {
  description = "variável para definir a subnet 1"
}

variable "private_subnet_2" {
  description = "variável para definir a subnet 2"
}

variable "eks_cluster" {
  description = "variável informações cluster"
}

variable "eks_security_group" {
  description = "variável para definir o security group"
}


variable "nodes_instance_sizes" {
  description = "variável para definir o tamanho das instâncias"
}

#variable "auto_scale_options" {
#  description = "variável definir o auto scale"
#}
#

variable "key_ssh" {
  description = "key ssh para instancias"
}

variable "asg_min" {
  description = "quantidade min de instâncias"
}

variable "asg_max" {
  description = "quantidade max instâncias"
}
variable "asg_desired" {
  description = "quantidade desejada instâncias"
}

variable "ami_version" {
  description = "Definir ami utilizada no eks"
}