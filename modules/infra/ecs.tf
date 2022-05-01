resource "aws_ecs_cluster" "cluster" {
  name = "${var.project}-${var.environment}"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  capacity_providers = ["FARGATE", ]
}

locals {
  app_definitions = flatten([
    for k, v in var.app_definitions : [
      {
        name  = k
        value = v
      }
    ]
  ])
}
