output "cloudwatch_event" {
  description = "The cloudwatch event rule arn."
  value = module.cloudwatch_event.cloudwatch_event
}
