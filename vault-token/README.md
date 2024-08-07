<!-- BEGIN_TF_DOCS -->
# vault-token

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
| [vault_token.main](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token_display_name"></a> [token\_display\_name](#input\_token\_display\_name) | String containing the token display name | `string` | `""` | no |
| <a name="input_token_no_parent"></a> [token\_no\_parent](#input\_token\_no\_parent) | Flag to create a token without parent | `bool` | `true` | no |
| <a name="input_token_policies"></a> [token\_policies](#input\_token\_policies) | A list of policies to apply to the entity | `list(any)` | `[]` | no |
| <a name="input_token_renewable"></a> [token\_renewable](#input\_token\_renewable) | Flag to allow to renew this token | `bool` | `true` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | The address of the HashiCorp Vault server | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The authentication token for accessing the HashiCorp Vault server | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_token"></a> [client\_token](#output\_client\_token) | String containing the client token if stored in present file |
<!-- END_TF_DOCS -->