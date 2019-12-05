# subnet

resource "aws_subnet" "public" {
  count             = length(local.az_names)
  vpc_id            = var.vpc_id
  availability_zone = local.az_names[count.index]
  cidr_block = cidrsubnet(
    var.vpc_cidr,
    8,
    var.public_subnets[local.az_names[count.index]],
  )
  tags = var.tags
}

resource "aws_subnet" "private" {
  count             = length(local.az_names)
  vpc_id            = var.vpc_id
  availability_zone = local.az_names[count.index]
  cidr_block = cidrsubnet(
    var.vpc_cidr,
    8,
    var.private_subnets[local.az_names[count.index]],
  )
  tags = var.tags
}

# routing

resource "aws_route_table" "public" {
  count  = length(local.az_names)
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = var.tags
}

resource "aws_route_table_association" "public" {
  count          = length(local.az_names)
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = element(aws_route_table.public.*.id, count.index)
}

resource "aws_route_table" "private" {
  count  = length(local.az_names)
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = element(aws_nat_gateway.nat.*.id, count.index)
  }

  tags = var.tags
}

resource "aws_route_table_association" "private" {
  count          = length(local.az_names)
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = element(aws_route_table.private.*.id, count.index)
}

# nat

resource "aws_nat_gateway" "nat" {
  count         = length(local.az_names)
  allocation_id = element(aws_eip.nat.*.id, count.index)
  subnet_id     = element(aws_subnet.public.*.id, count.index)
  tags          = var.tags

  depends_on = [aws_eip.nat]
}

# eip

resource "aws_eip" "nat" {
  count = length(local.az_names)
  vpc   = true
  tags  = var.tags
}

# network interface

resource "aws_network_interface" "nat" {
  count     = length(local.az_names)
  subnet_id = element(aws_subnet.public.*.id, count.index)
  tags      = var.tags
}

