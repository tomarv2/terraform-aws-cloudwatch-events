terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 3.74"
    }
  }
}

provider "aws" {
  region = var.region
}

module "cloudwatch_event" {
  source = "../"

  service_role = "<>"
  target_arn   = "<>"
  #-----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.prjid
  prjid  = var.teamid
}
