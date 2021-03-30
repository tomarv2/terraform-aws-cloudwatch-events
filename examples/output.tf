output "cloudwatch_event_rule_arn" {
  description = "The cloudwatch event rule arn."
  value       = module.cloudwatch_event.cloudwatch_event_rule_arn
}

output "cloudwatch_event_target_arn" {
  description = "The cloudwatch event target arn."
  value       = module.cloudwatch_event.cloudwatch_event_target_arn
}