variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
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

variable "target_arn" {
  description = "target arn"
  type        = string
}

variable "deploy_event_target" {
  description = "Feature flag, true or false"
  default     = true
  type        = bool
}

variable "deploy_event_rule" {
  description = "Feature flag, true or false"
  default     = true
  type        = bool
}

variable "custom_input" {
  description = "custom input to be included in generated events"
  default     = null
  type        = map(any)
}

variable "name" {
  description = "Cloudwatch event rule name"
  type        = string
  default     = null
}

variable "suffix" {
  description = "suffix to be added to cloudwatch rule name"
  default     = "rule"
  type        = string
}
