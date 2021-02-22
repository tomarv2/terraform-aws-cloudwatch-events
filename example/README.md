# CloudWatch event module usage

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| add\_eventrule | n/a | `any` | n/a | yes |
| add\_eventtarget | n/a | `any` | n/a | yes |
| aws\_region | n/a | `any` | n/a | yes |
| branch | n/a | `any` | n/a | yes |
| description | n/a | `string` | `"cloudwatch event"` | no |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| schedule | n/a | `any` | n/a | yes |
| service\_role | n/a | `any` | n/a | yes |
| target\_arn | n/a | `any` | n/a | yes |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| timeout | n/a | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| cloudwatch\_event | The cloudwatch event rule arn. |
