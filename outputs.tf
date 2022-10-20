output "event_rule_arn" {
  description = "The cloudwatch event rule ARN"
  value       = [for event in aws_cloudwatch_event_rule.event_rule : event.arn]
}

output "event_target_arn" {
  description = "The cloudwatch event target ARN"
  value       = [for target in aws_cloudwatch_event_rule.event_rule : target.arn]
}
