variable "email" {
  description = "email address to be used for tagging (suggestion: use group email address)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "description" {
  default = "cloudwatch event"
}

variable "service_role" {
  description = "service role to be used by CICD"
}

variable "schedule" {}

variable "branch" {}

variable "timeout" {
  default = 60
}

variable "aws_region" {}

variable "target_arn" {}

variable "add_eventtarget" {}

variable "add_eventrule" {}