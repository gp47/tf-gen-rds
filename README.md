# tf-gen-rds

## Summary

Terraform code to create an GEN-AWS-RDS

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.00 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.00 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | terraform-aws-modules/rds/aws | ~> 6.1.0 |
| <a name="module_db_disabled"></a> [db\_disabled](#module\_db\_disabled) | terraform-aws-modules/rds/aws | ~> 6.1.0 |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | terraform-aws-modules/security-group/aws | ~> 5.0 |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_subnet_group"></a> [db\_subnet\_group](#input\_db\_subnet\_group) | ID of database subnet group. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The Project Name. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags assigned to the created resources | `map(string)` | `{}` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The VPC CIDR Block. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_instance_address"></a> [db\_instance\_address](#output\_db\_instance\_address) | The address of the RDS instance |
| <a name="output_rds_security_group_arn"></a> [rds\_security\_group\_arn](#output\_rds\_security\_group\_arn) | The ARN of the security group |
| <a name="output_rds_security_group_name"></a> [rds\_security\_group\_name](#output\_rds\_security\_group\_name) | The name of the security group |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
