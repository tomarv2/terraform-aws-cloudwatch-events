output "cloudwatch_event_rule_arn" {
  description = "The cloudwatch event rule arn."
  value       = join("", aws_cloudwatch_event_rule.event_rule.*.arn)
}

output "cloudwatch_event_target_arn" {
  description = "The cloudwatch event target arn."
  value       = join("", aws_cloudwatch_event_target.event_target_input_type.*.arn)
}