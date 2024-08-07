<!-- BEGIN_TF_DOCS -->
# opnsense-firewall-alias

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_opnsense"></a> [opnsense](#requirement\_opnsense) | >=0.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opnsense"></a> [opnsense](#provider\_opnsense) | >=0.9 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opnsense_firewall_alias.main](https://registry.terraform.io/providers/browningluke/opnsense/latest/docs/resources/firewall_alias) | resource |
| [vault_generic_secret.opnsense](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_aliases"></a> [firewall\_aliases](#input\_firewall\_aliases) | n/a | <pre>list(object({<br>    name        = string<br>    type        = string<br>    content     = set(string)<br>    stats       = bool<br>    description = string<br>  }))</pre> | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The Vault API token | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->