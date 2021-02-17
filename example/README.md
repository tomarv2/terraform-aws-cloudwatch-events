# AWS Cloudwatch

Terraform to create Cloudwatch resources on AWS.

This module focuses on [Cloudwatch](https://aws.amazon.com/cloudwatch/)

**NOTE:** In most cases creating resources is heavily opinionated and or context-bound.

## Terraform versions

Terraform 0.12 

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| email | Team email, not individual email | `any` | n/a | yes |
| prjid | Name of the project/stack.  EG: mystack | `any` | n/a | yes |
| teamid | Name of the team or group e.g. devops, dataengineering. Should not be changed after running 'tf apply'. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| log\_group | The name of the default log group for the cluster. |

