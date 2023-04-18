resource "aws_subnet" "public_subnet_1" {
  vpc_id = aws_vpc.cluster_k8s.id
  cidr_block = "10.10.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = format("%sa", var.aws_region)

  tags = {
    "Name" = format("%s-k8s-public-subnet-1", var.cluster_name),
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_subnet" "public_subnet_2" {
  vpc_id = aws_vpc.cluster_k8s.id
  cidr_block = "10.10.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = format("%sb", var.aws_region)

  tags = {
    "Name" = format("%s-k8s-public-subnet2", var.cluster_name),
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}


resource "aws_route_table_association" "public_1" {
  subnet_id = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.igw_route_table.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.igw_route_table.id
}
