resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cluster_k8s.id

  tags = {
    Name = format("%s-igw", var.cluster_name)
  }
}

resource "aws_route_table" "igw_route_table" {
  vpc_id = aws_vpc.cluster_k8s.id
  tags = {
    Name = format("%s-igw-route-table", var.cluster_name)
  }
}

resource "aws_route" "intenet_access" {
  route_table_id = aws_route_table.igw_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}
