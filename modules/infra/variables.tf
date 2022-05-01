variable "environment" {
  default     = ""
  description = "Environment for deployment"
}

variable "project" {
  default     = ""
  description = "Project, aka the application name"
}

variable "region" {
  default     = ""
  description = "AWS region for resources"
}

variable "vpc_id" {
  default     = ""
  description = "VPC ID to use for the resources"
}

variable "task_iam_policy" {
  default     = ""
  description = "Policy document for ecs task"
}

variable "app_definitions" {
  default     = ""
  description = "Map of environment variables for the application"
}

variable "platform_version" {
  default     = "1.4.0"
  description = "Platform version on which to run your service."
}
