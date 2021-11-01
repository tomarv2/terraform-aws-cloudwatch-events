variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "description" {
  description = "description for the cloudwatch event"
  default     = null
  type        = string
}

variable "service_role" {
  description = "service role to be used by cicd"
  default     = null
  type        = string
}

variable "schedule" {
  description = "schedule for the cloudwatch event"
  default     = "rate(1 day)"
  type        = string
}

variable "branch" {
  description = "branch to use for cicd"
  default     = "main"
  type        = string
}

variable "timeout" {
  description = "timeout for cloudwatch event"
  default     = 60
  type        = number
}

variable "profile_to_use" {
  description = "Getting values from ~/.aws/credentials"
  default     = "default"
  type        = string
}

variable "aws_region" {
  description = "aws region to deploy resources"
  default     = "us-west-2"
  type        = string
}

variable "target_arn" {
  description = "target arn"
  type        = string
}

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

variable "custom_input" {
  description = "custom input to be included in generated events"
  default     = null
  type        = map(any)
}

variable "suffix" {
  description = "suffix to be added to cloudwatch rule name"
  default     = "rule"
  type        = string
}

variable "name" {
  description = "Cloudwatch event rule name"
  type        = string
  default     = null
}

variable "target_name" {
  description = "Cloudwatch target name"
  type        = string
  default     = null
}
