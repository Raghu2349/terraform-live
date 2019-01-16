
provider "aws" {
  access_key = "AKIAIZUFCAE7VYIJPL4Q"
  secret_key = "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"
  region     = "us-east-1"
}


data "aws_availability_zones" "available" {}



module "networking" {
  source                = "../../../development/terraform-modules/modules/networking"
  environment           = "development"
  vpc_cidr              = "${var.vpc_cidr}"
  subnet_cidrs_public   = "${var.subnet_cidrs_public}"
  #region               = "${var.region}"
  availability_zones    = "${local.production_availability_zones}"
  #key_name             = "production_key"
  projectName           ="${var.projectName}"
}
