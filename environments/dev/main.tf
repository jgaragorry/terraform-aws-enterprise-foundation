module "tagging" {
  source      = "../../modules/tagging"
  environment = "dev"
  project     = "tf-enterprise-foundation"
  cost_center = "training-devops"
  owner       = "jgaragorry"
}

module "networking" {
  source = "../../modules/networking"

  vpc_cidr = var.vpc_cidr
  subnets  = var.subnet_cidrs
  azs      = var.availability_zones
  tags     = module.tagging.tags
}

module "compute" {
  source = "../../modules/compute"

  instance_type   = var.instance_type
  key_name        = var.key_name # <-- AÑADE ESTA LÍNEA
  subnet_ids      = module.networking.subnet_ids
  vpc_id          = module.networking.vpc_id
  ssh_allowed_ip  = var.my_ip_for_ssh
  tags            = module.tagging.tags
}
