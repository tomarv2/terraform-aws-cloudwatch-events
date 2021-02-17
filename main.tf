terraform {
  required_version            = ">= 0.12"
}

module "global" {
  source                     = "./../../../../_base_module/aws"
}

locals {
  shared_tags  = map(
      "Name", "${var.teamid}-${var.prjid}",
      "Owner", var.email,
      "Team", var.teamid,
      "Project", var.prjid
  )
}
