variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
  default     = "hello"
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
  default     = "world"
}

variable "region" {
  description = "AWS region to create resources"
  default     = "us-west-2"
  type        = string
}

variable "cloudwatch_event_config" {
  description = "Cloudwatch event configuration"
  type        = map(any)
  default     = {}
}
