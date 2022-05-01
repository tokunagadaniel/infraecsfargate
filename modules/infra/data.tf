data "aws_caller_identity" "current" {}
 
data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnet_ids" "private" {
  vpc_id = var.vpc_id
}

data "aws_subnet" "private" {
  for_each = data.aws_subnet_ids.private.ids
  id       = each.value
}

data "aws_availability_zones" "zones" {
  state = "available"
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.private : s.cidr_block]
}
