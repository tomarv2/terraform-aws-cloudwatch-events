# terraform-aws-cloudwatch-event
Terraform module for CloudWatch event


| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | ~> 2.61 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.61 |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| email | Team email, not individual email | `any` | n/a | yes |
| prjid | Name of the project/stack.  EG: mystack | `any` | n/a | yes |
| teamid | Name of the team or group e.g. devops, dataengineering. Should not be changed after running 'tf apply'. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| log\_group | The name of the default log group. |

