resource "aws_cloudwatch_event_rule" "event_rule" {
  count = var.deploy_event_rule ? 1 : 0

  name                = "${var.teamid}-${var.prjid}-rule"
  description         = var.description == null ? "Managed by Terraform: ${var.teamid}-${var.prjid}" : var.description
  schedule_expression = var.schedule
  role_arn            = var.service_role

  tags = merge(local.shared_tags)
}

resource "aws_cloudwatch_event_target" "event_target_input_type" {
  count = var.deploy_event_target ? 1 : 0
  rule     = aws_cloudwatch_event_rule.event_rule.*.id[count.index]
  arn      = var.target_arn
  role_arn = var.service_role
  input    = jsonencode({ "sourceVersion" = var.branch, "timeoutInMinutesOverride" = var.timeout })
}