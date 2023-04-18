resource "aws_subnet" "private_subnet_1" {
  vpc_id = aws_vpc.cluster_k8s.id
  cidr_block = "10.10.3.0/24"
  availability_zone = format("%sa", var.aws_region)
  

  tags = {
    Name = format("%s-k8s-private-subnet-1", var.cluster_name),
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
  
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id = aws_vpc.cluster_k8s.id
  cidr_block = "10.10.4.0/24"
  availability_zone = format("%sb", var.aws_region)
  
   
  tags = {
    Name = format("%s-k8s-private-subnet-2", var.cluster_name),
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
  

}

resource "aws_route_table_association" "private_subnet_1" {
  subnet_id = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.nat.id
}

resource "aws_route_table_association" "private_subnet_2" {
  subnet_id = aws_subnet.private_subnet_2.id
    route_table_id = aws_route_table.nat_2.id

}
