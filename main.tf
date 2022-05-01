module "ecs-fargate-service" {
   source                  = "./modules/infra"
   environment             = var.environment
   project                 = var.project
   region                  = var.region
   app_definitions         = local.app_definitions
}
 

 
