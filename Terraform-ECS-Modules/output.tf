output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnets in the VPC"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private subnets in the VPC"
  value       = module.vpc.private_subnets
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = module.ecs.cluster_name
}

output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = module.alb.alb_name
}
