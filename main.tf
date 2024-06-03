module "vpc_us_east_1" {
  source  = "./modules/vpc"
  region  = "us-east-1"
}

module "vpc_us_east_2" {
  source  = "./modules/vpc"
  region  = "us-east-2"
}

module "ec2_instance_us_east_1" {
  source       = "./modules/ec2"
  region       = "us-east-1"
  subnet_id    = module.vpc_us_east_1.subnet_id
  instance_type = "t2.small"
}

module "ec2_instance_us_east_2" {
  source       = "./modules/ec2"
  region       = "us-east-2"
  subnet_id    = module.vpc_us_east_2.subnet_id
  instance_type = "t2.small"
}
