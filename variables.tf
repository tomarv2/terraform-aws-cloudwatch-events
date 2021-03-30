variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "description" {
  default = null
}

variable "service_role" {
  description = "service role to be used by CICD"
}

variable "schedule" {
  default = "rate(1 day)"
}

variable "branch" {
  default = "main"
}

variable "timeout" {
  default = 60
}

variable "profile_to_use" {
  description = "Getting values from ~/.aws/credentials"
  default     = "default"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "target_arn" {}

variable "deploy_event_target" {
  description = "feature flag, true or false"
  default     = true
  type        = bool
}

variable "deploy_event_rule" {
  description = "feature flag, true or false"
  default     = true
  type        = bool
}