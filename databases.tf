// Generated by insterra

module "aws_database_sombrero_cwi" {
  source  = "upmaru/instellar/aws//modules/database"
  version = "0.9.3"

  blueprint                     = var.identifier
  db_name                       = "instellardb"
  db_size                       = "db.t3.small"
  db_username                   = "instellar"
  deletion_protection           = true
  engine                        = "postgres"
  engine_version                = "15"
  identifier                    = "sombrero-cwi"
  manage_credential_with_secret = false
  nodes_iam_roles = [

  ]
  port   = 5432
  region = var.aws_region
  security_group_ids = [
    module.aws_compute_sombrero_hjt.nodes_security_group_id,
    module.aws_compute_sombrero_hjt.bastion_security_group_id
  ]
  skip_final_snapshot = false
  subnet_ids          = module.aws_networking_sombrero_kyg.public_subnet_ids
  vpc_id              = module.aws_networking_sombrero_kyg.vpc_id
}
