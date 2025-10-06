module "tagging" {
  source = "../../modules/tagging"

  environment = "dev"
  project     = "tf-enterprise-foundation"
  cost_center = "training"
  owner       = "jgaragorry"
}

module "networking" {
  source = "../../modules/networking"

  vpc_cidr = "10.0.0.0/16"
  subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  azs      = ["us-east-1a", "us-east-1b"]

  tags = module.tagging.tags
}

module "compute" {
  source = "../../modules/compute"

  instance_type = "t3.micro"
  subnet_ids    = module.networking.subnet_ids
  vpc_id        = module.networking.vpc_id

  tags = module.tagging.tags
}
