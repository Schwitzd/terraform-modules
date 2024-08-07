<!-- BEGIN_TF_DOCS -->
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
| [vault_identity_group.main](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_description"></a> [group\_description](#input\_group\_description) | Human-friendly description of the group | `string` | n/a | yes |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Name of the identity group to create | `string` | n/a | yes |
| <a name="input_group_policies"></a> [group\_policies](#input\_group\_policies) | A list of policies to apply to the group | `list` | `[]` | no |
| <a name="input_group_type"></a> [group\_type](#input\_group\_type) | Type of the group, internal or external | `string` | n/a | yes |
| <a name="input_member_entity_ids"></a> [member\_entity\_ids](#input\_member\_entity\_ids) | A list of Group IDs to be assigned as group members. Not allowed on external groups | `list` | `[]` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | The address of the HashiCorp Vault server | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The authentication token for accessing the HashiCorp Vault server | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->