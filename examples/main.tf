terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 4.61"
    }
  }
}

provider "aws" {
  region = var.region
}

module "cloudwatch_event" {
  source = "../"
  config = {
    demo_rule = {
      service_role = "arn:aws:iam::123456789012:role/demo-role"
      target_arn   = "<lambda_role>"
    }
  }
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.prjid
  prjid  = var.teamid
}
