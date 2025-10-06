resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags       = merge(var.tags, { Name = "${var.tags.Project}-vpc" })
}

resource "aws_subnet" "main" {
  count             = length(var.subnets)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets[count.index]
  availability_zone = var.azs[count.index]

  tags = merge(var.tags, { Name = "${var.tags.Project}-subnet-${count.index}" })
}
