variable "config" {
  description = "Cloudwatch event configuration"
  type        = map(any)
  default     = {}
}

variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}
