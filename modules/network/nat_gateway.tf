resource "aws_eip" "vpc_eip" {
  vpc = true

    tags = {
        Name = format("%s-eip", var.cluster_name)
    }
}


resource "aws_eip" "vpc_eip_2" {
  vpc = true

    tags = {
        Name = format("%s-eip", var.cluster_name)
    }
}


resource "aws_nat_gateway" "nat"{
    allocation_id = aws_eip.vpc_eip.allocation_id
    subnet_id = aws_subnet.public_subnet_1.id

    tags = {
     Name = format("%s-nat-gateway", var.cluster_name)
    }
}


 resource "aws_nat_gateway" "nat_2"{
    allocation_id = aws_eip.vpc_eip_2.allocation_id
    subnet_id = aws_subnet.public_subnet_2.id

    tags = {
     Name = format("%s-nat-gateway", var.cluster_name)
    }
}


 resource "aws_route_table" "nat" {
  vpc_id = aws_vpc.cluster_k8s.id

  tags = {
    Name = format("%s-private-rt", var.cluster_name)
  }
}

 resource "aws_route_table" "nat_2" {
  vpc_id = aws_vpc.cluster_k8s.id

  tags = {
    Name = format("%s-private-rt", var.cluster_name)
  }
}

resource "aws_route" "nat_access" {
  route_table_id = aws_route_table.nat.id
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
}

resource "aws_route" "nat_access_2" {
  route_table_id = aws_route_table.nat_2.id
    destination_cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_2.id
}

