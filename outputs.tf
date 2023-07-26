output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = module.db.db_instance_address
}

output "rds_security_group_name" {
  description = "The name of the security group"
  value       = module.security_group.security_group_name
}

output "rds_security_group_arn" {
  description = "The ARN of the security group"
  value       = module.security_group.security_group_arn
}
