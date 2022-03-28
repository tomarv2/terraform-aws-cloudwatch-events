<p align="center">
    <a href="https://github.com/tomarv2/terraform-aws-cloudwatch-events/actions/workflows/pre-commit.yml" alt="Pre Commit">
        <img src="https://github.com/tomarv2/terraform-aws-cloudwatch-events/actions/workflows/pre-commit.yml/badge.svg?branch=main" /></a>
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-aws-cloudwatch-events" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-cloudwatch-events/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-cloudwatch-events" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-cloudwatch-events/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-aws-cloudwatch-events" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

## Terraform module for [AWS CloudWatch Events](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/WhatIsCloudWatchEvents.html)

### Versions

- Module tested for Terraform 1.0.1.
- AWS provider version [3.74](https://registry.terraform.io/providers/hashicorp/aws/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases.
- `tags` releases: Tags are pinned with versions (use <a href="https://github.com/tomarv2/terraform-aws-cloudwatch-events/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-cloudwatch-events" /></a>).


### Usage

#### Option 1:

```
terrafrom init
terraform plan -var='teamid=tryme' -var='prjid=project1'
terraform apply -var='teamid=tryme' -var='prjid=project1'
terraform destroy -var='teamid=tryme' -var='prjid=project1'
```
**Note:** With this option please take care of remote state storage

#### Option 2:

##### Recommended method (stores remote state in S3 using `prjid` and `teamid` to create directory structure):

- Create python 3.8+ virtual environment
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote --upgrade
```

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_BUCKET_REGION=us-west-2
export TF_AWS_PROFILE=<profile from ~/.ws/credentials>
```

or

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_BUCKET_REGION=us-west-2
export AWS_ACCESS_KEY_ID=<aws_access_key_id>
export AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>
```

- Updated `examples` directory with required values.

- Run and verify the output before deploying:
```
tf -c=aws plan -var='teamid=foo' -var='prjid=bar'
```

- Run below to deploy:
```
tf -c=aws apply -var='teamid=foo' -var='prjid=bar'
```

- Run below to destroy:
```
tf -c=aws destroy -var='teamid=foo' -var='prjid=bar'
```

**Note:** Read more on [tfremote](https://github.com/tomarv2/tfremote)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.74 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.74 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.event_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.event_target_input_type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | branch to use for cicd | `string` | `"main"` | no |
| <a name="input_custom_input"></a> [custom\_input](#input\_custom\_input) | custom input to be included in generated events | `map(any)` | `null` | no |
| <a name="input_deploy_event_rule"></a> [deploy\_event\_rule](#input\_deploy\_event\_rule) | Feature flag, true or false | `bool` | `true` | no |
| <a name="input_deploy_event_target"></a> [deploy\_event\_target](#input\_deploy\_event\_target) | Feature flag, true or false | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | description for the cloudwatch event | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Cloudwatch event rule name | `string` | `null` | no |
| <a name="input_prjid"></a> [prjid](#input\_prjid) | Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_schedule"></a> [schedule](#input\_schedule) | schedule for the cloudwatch event | `string` | `"rate(1 day)"` | no |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | service role to be used by cicd | `string` | `null` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | suffix to be added to cloudwatch rule name | `string` | `"rule"` | no |
| <a name="input_target_arn"></a> [target\_arn](#input\_target\_arn) | target arn | `string` | n/a | yes |
| <a name="input_teamid"></a> [teamid](#input\_teamid) | Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `string` | n/a | yes |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | timeout for cloudwatch event | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_event_rule_arn"></a> [cloudwatch\_event\_rule\_arn](#output\_cloudwatch\_event\_rule\_arn) | The cloudwatch event rule ARN |
| <a name="output_cloudwatch_event_target_arn"></a> [cloudwatch\_event\_target\_arn](#output\_cloudwatch\_event\_target\_arn) | The cloudwatch event target ARN |
<!-- END_TF_DOCS -->
