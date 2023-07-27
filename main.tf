data "aws_caller_identity" "current" {}

################################################################################
# RDS Module
################################################################################

module "db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 6.1.0"

  identifier = "${var.project_name}-db"

  create_db_option_group    = false
  create_db_parameter_group = false

  engine               = "postgres"
  engine_version       = "14"
  family               = "postgres14"
  major_engine_version = "14"
  instance_class       = "db.t3.micro"

  allocated_storage = 5

  db_name                     = var.db_name
  username                    = var.db_username
  manage_master_user_password = true
  password                    = var.db_password
  port                        = 5432

  db_subnet_group_name   = var.db_subnet_group
  vpc_security_group_ids = [module.security_group.security_group_id]

  skip_final_snapshot = true
  deletion_protection = false

  tags = var.tags
}

################################################################################
# SG Module
################################################################################

module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.0"

  name        = "${var.project_name}-db-sg"
  description = "Complete PostgreSQL example security group"
  vpc_id      = var.vpc_id

  # ingress
  ingress_with_cidr_blocks = [
    {
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      description = "PostgreSQL access from within VPC"
      cidr_blocks = "${var.vpc_cidr}"
    },
  ]

  tags = var.tags
}
