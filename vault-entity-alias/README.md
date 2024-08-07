<!-- BEGIN_TF_DOCS -->
# vault-entity-alias

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
| [vault_identity_entity_alias.entity_alias](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity_alias) | resource |
| [vault_auth_backend.main](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/auth_backend) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_backend"></a> [auth\_backend](#input\_auth\_backend) | Type of authentication method used to access the Vault | `string` | n/a | yes |
| <a name="input_canonical_id"></a> [canonical\_id](#input\_canonical\_id) | Entity ID to which this alias belongs to | `string` | n/a | yes |
| <a name="input_entity_alias_name"></a> [entity\_alias\_name](#input\_entity\_alias\_name) | Name of the alias. Name should be the identifier of the client in the authentication source | `string` | n/a | yes |
| <a name="input_mount_accessor"></a> [mount\_accessor](#input\_mount\_accessor) | Accessor of the mount to which the alias should belong to | `string` | `""` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | The address of the HashiCorp Vault server | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The authentication token for accessing the HashiCorp Vault server | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->