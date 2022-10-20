resource "aws_cloudwatch_event_rule" "event_rule" {
  for_each = var.cloudwatch_event_config != null ? var.cloudwatch_event_config : {}

  name                = each.key
  description         = try(each.value.description, "Terraform managed: ${var.teamid}-${var.prjid}")
  schedule_expression = try(each.value.schedule, "rate(1 day)")
  role_arn            = each.value.service_role

  tags = merge(local.shared_tags, var.extra_tags)
}

resource "aws_cloudwatch_event_target" "event_target_input_type" {
  for_each = var.cloudwatch_event_config != null ? var.cloudwatch_event_config : {}

  target_id = each.key
  rule      = join("", [for rule in aws_cloudwatch_event_rule.event_rule : rule.id])
  arn       = each.value.target_arn
  input     = jsonencode(try(each.value.event_input, { "sourceVersion" = try(each.value.branch, "main"), "timeoutInMinutesOverride" = try(each.value.timeout, 60) }))
}
