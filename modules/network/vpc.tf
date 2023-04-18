resource "aws_vpc" "cluster_k8s" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true

    tags = {
        Name = format("%s", var.cluster_name)
    }

}
