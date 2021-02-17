output "cloudwatch_event" {
  description = "The cloudwatch event rule arn."
  value = aws_cloudwatch_event_rule.event_rule.*.arn
}
