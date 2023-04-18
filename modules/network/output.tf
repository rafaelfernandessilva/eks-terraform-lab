output "cluster_k8s" {
  value = aws_vpc.cluster_k8s
  description = "Output vpc cluster"
}

output "public_1" {
  value = aws_subnet.public_subnet_1
  description = "Output public subnet 1"
}

output "public_2" {
  value = aws_subnet.public_subnet_2
  description = "Output public subnet 2"
}

output "private_subnet_1" {
  value = aws_subnet.private_subnet_1
  description = "Output private subnet 1"
}

output "private_subnet_2" {
  value = aws_subnet.private_subnet_2
  description = "Output private subnet 2"
}
