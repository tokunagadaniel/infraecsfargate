<<<<<<< HEAD
=======
data "aws_caller_identity" "current" {}
 
>>>>>>> 098c3f22c892e7f36a643992d0ea543625a031ee
data "aws_vpc" "selected" {
  id = var.vpc_id
}
