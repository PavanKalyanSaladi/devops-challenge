variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name for project resources"
  type        = string
}

variable "container_image" {
  description = "Container image to deploy"
  type        = string
}
