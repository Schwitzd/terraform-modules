<!-- BEGIN_TF_DOCS -->
# vault-entity

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
| [vault_identity_entity.entity](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_entity_description"></a> [entity\_description](#input\_entity\_description) | Human-friendly description of the identity | `string` | n/a | yes |
| <a name="input_entity_name"></a> [entity\_name](#input\_entity\_name) | Name of the identity entity to create | `string` | n/a | yes |
| <a name="input_entity_policies"></a> [entity\_policies](#input\_entity\_policies) | A list of policies to apply to the entity | `list` | `[]` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | The address of the HashiCorp Vault server | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The authentication token for accessing the HashiCorp Vault server | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The id of the created entity |
<!-- END_TF_DOCS -->