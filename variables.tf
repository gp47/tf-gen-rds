variable "project_name" {
  type        = string
  description = "The Project Name."
}

variable "tags" {
  type        = map(string)
  description = "Tags assigned to the created resources"
  default     = {}
}

variable "vpc_cidr" {
  type        = string
  description = "The VPC CIDR Block."
}

variable "db_subnet_group" {
  type        = string
  description = "ID of database subnet group."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}
