# environments/dev/main.tf

module "tagging" {
  source = "../../modules/tagging"

  # Define aquí todas las variables para las etiquetas
  environment = "dev"
  project     = "tf-enterprise-foundation"
  cost_center = "training-devops"
  owner       = "jgaragorry"
}

module "networking" {
  source = "../../modules/networking"

  vpc_cidr = "10.0.0.0/16"
  subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  azs      = ["us-east-1a", "us-east-1b"]

  # Pasa el mapa completo de etiquetas desde el módulo "tagging"
  tags = module.tagging.tags
}

module "compute" {
  source = "../../modules/compute"

  instance_type = "t3.micro"
  subnet_ids    = module.networking.subnet_ids
  vpc_id        = module.networking.vpc_id

  # Pasa el mapa completo de etiquetas desde el módulo "tagging"
  tags = module.tagging.tags
}

# environments/dev/main.tf

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
  subnet_ids      = module.networking.subnet_ids
  vpc_id          = module.networking.vpc_id
  ssh_allowed_ip  = var.my_ip_for_ssh
  tags            = module.tagging.tags
}
