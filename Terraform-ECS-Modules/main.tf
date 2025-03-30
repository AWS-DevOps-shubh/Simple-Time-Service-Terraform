module "vpc" {
  source = "./modules/vpc"

  vpc_name          = "ecs-vpc"
  cidr              = "10.0.0.0/16"
  azs               = ["us-east-1a", "us-east-1b"]
  public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets   = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
}

module "ecs" {
  source = "./modules/ecs"

  cluster_name       = "ecs-cluster"
  task_family        = "simple-time-stamp-task"
  container_name     = "simple-time-stamp"
  container_image    = "devshubh2204/simple-time-stamp:latest"
  container_port     = 5000
  cpu                = "2048" # 2 vCPUs
  memory             = "4096" # 4 GB memory
  desired_count      = 1
  private_subnets    = module.vpc.private_subnets
  alb_target_group_arn = module.alb.target_group_arn
  ecs_sg_id          = module.alb.ecs_sg_id
  alb_listener_arn   = module.alb.listener_arn
}

module "alb" {
  source = "./modules/alb"

  alb_name          = "ecs-alb"
  public_subnets    = module.vpc.public_subnets
  vpc_id            = module.vpc.vpc_id
  container_port    = 5000
}
