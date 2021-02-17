module "cloudwatch_event" {
  source =   "../.."

  email                                 = var.email
  teamid                                = var.teamid
  prjid                                 = var.prjid

  branch                                = var.branch
  aws_region                            = var.aws_region
  schedule                              = var.schedule
  service_role                          = var.service_role
  target_arn                            = var.target_arn
  add_eventtarget                       = var.add_eventtarget
  add_eventrule                         = var.add_eventrule
}

