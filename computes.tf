// Generated by insterra

module "aws_compute_sombrero_hjt" {
  source  = "upmaru/instellar/aws"
  version = "0.9.3"

  balancer                     = false
  balancer_deletion_protection = true
  balancer_ssh                 = true
  bastion_size                 = "t3a.micro"
  bastion_ssh                  = true
  blueprint                    = var.identifier
  cluster_topology = [
    { id = 1, name = "01", size = "t3a.medium" },
    { id = 2, name = "02", size = "t3a.medium" },
  ]

  global_accelerator   = false
  identifier           = "sombrero-hjt"
  network_dependencies = module.aws_networking_sombrero_kyg.dependencies
  node_detail_revision = 1
  node_size            = "t3a.medium"
  public_subnet_ids    = module.aws_networking_sombrero_kyg.public_subnet_ids
  publicly_accessible  = true
  region               = var.aws_region
  ssh_keys             = ["zack-studio", "zack-mbp"]
  ssm                  = true
  storage_size         = 40
  volume_type          = "gp3"
  vpc_id               = module.aws_networking_sombrero_kyg.vpc_id
  vpc_ip_range         = module.aws_networking_sombrero_kyg.vpc_ip_range
}

module "aws_compute_perseus_lhb" {
  source  = "upmaru/instellar/aws"
  version = "0.9.3"

  balancer                     = false
  balancer_deletion_protection = true
  balancer_ssh                 = true
  bastion_size                 = "t3a.micro"
  bastion_ssh                  = true
  blueprint                    = var.identifier
  cluster_topology = [
  ]

  global_accelerator   = false
  identifier           = "perseus-lhb"
  network_dependencies = module.aws_networking_sombrero_kyg.dependencies
  node_detail_revision = 1
  node_size            = "t3a.medium"
  public_subnet_ids    = module.aws_networking_sombrero_kyg.public_subnet_ids
  publicly_accessible  = true
  region               = var.aws_region
  ssh_keys             = ["zack-studio", "zack-mbp"]
  ssm                  = true
  storage_size         = 40
  volume_type          = "gp3"
  vpc_id               = module.aws_networking_sombrero_kyg.vpc_id
  vpc_ip_range         = module.aws_networking_sombrero_kyg.vpc_ip_range
}
