<!-- BEGIN_TF_DOCS -->
# vault-policy

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_policy.main](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy_document.policies](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | The name of the policy | `string` | n/a | yes |
| <a name="input_policy_rules"></a> [policy\_rules](#input\_policy\_rules) | A map of policy names to their definitions | <pre>map(object({<br>    path         = string<br>    capabilities = list(string)<br>    description  = string<br>  }))</pre> | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | The address of the HashiCorp Vault server | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The authentication token for accessing the HashiCorp Vault server | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the policy |
<!-- END_TF_DOCS -->