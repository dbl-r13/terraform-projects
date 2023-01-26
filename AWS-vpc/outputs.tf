output "vpc_public_subnets" {
  description = "IDs of the VPC's public subnets"
  value       = module.vpc.public_subnets
}

output "vpc_private_subnets" {
  description = "IDs of the VPC's private subnets"
  value       = module.vpc.private_subnets
}

output "vpc_name" {
  value = var.vpc_name
}

output "vpc_sg_ids" {
  value = module.vpc_sg.security_group_id
}
