// Generated by insterra

module "aws_bucket_polaris_wvy" {
  source  = "upmaru/instellar/aws//modules/bucket"
  version = "0.9.3"

  blueprint  = var.identifier
  identifier = "polaris-wvy"
  region     = var.aws_region
}
