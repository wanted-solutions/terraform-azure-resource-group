# terraform-module-template

Repository template for Terraform module.

> If you'd like to check module metadata usage in detail you can do it [here](./examples-module-metadata/README.md). Remove this quote and whole directory before publishing your module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_consumption_budget_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/consumption_budget_resource_group) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budgets"></a> [budgets](#input\_budgets) | List of budgets to be assigned under management group. | <pre>list(object({<br>    name       = string<br>    amount     = number<br>    time_grain = string<br>    start_date = string<br>    end_date   = string<br>    filter = object({<br>      dimension = list(object({<br>        name   = string<br>        values = list(string)<br>      }))<br>      tag = list(object({<br>        name   = string<br>        values = list(string)<br>      }))<br>    })<br>    notifications = list(object({<br>      enabled        = bool<br>      threshold      = number<br>      operator       = string<br>      threshold_type = string<br>      contact_emails = list(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | The ID of the resource that manages this resource group. | `string` | `""` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Module metadata object to give user possibility to override default module values. | <pre>object({<br>    default_tags             = optional(map(string), {})<br>    resource_timeouts        = optional(map(map(string)), {})<br>    validator_error_messages = optional(map(string), {})<br>    validator_expressions    = optional(map(string), {})<br>  })</pre> | `{}` | no |
| <a name="input_region"></a> [region](#input\_region) | The location/region where the resources will be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the resources will be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key value pairs of custom tags to be applied to the module resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group) | Output of the resource group object. |
<!-- END_TF_DOCS -->

## Usage

> ADD content about usage