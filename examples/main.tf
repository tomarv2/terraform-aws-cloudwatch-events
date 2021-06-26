provider "aws" {
  region  = "us-west-2"
  profile = "<aws profile to use>"
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
