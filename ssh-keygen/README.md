<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.5 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | ~> 2.5 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.private_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [local_sensitive_file.public_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [tls_private_key.ssh_keys](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | Name of the algorithm to use when generating the private key. Supported values are: RSA, ECDSA, ED25519. | `string` | `"ED25519"` | no |
| <a name="input_ecdsa_curve"></a> [ecdsa\_curve](#input\_ecdsa\_curve) | When algorithm is ECDSA, the name of the elliptic curve to use. Supported values are: P224, P256, P384, P521. | `string` | `"P384"` | no |
| <a name="input_keys_name"></a> [keys\_name](#input\_keys\_name) | The base name for the SSH key files. | `string` | n/a | yes |
| <a name="input_keys_path"></a> [keys\_path](#input\_keys\_path) | The path where SSH keys will be stored. | `string` | `"~/.ssh"` | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | When algorithm is RSA, the size of the generated RSA key, in bits. | `number` | `4096` | no |
| <a name="input_write_to_file"></a> [write\_to\_file](#input\_write\_to\_file) | Whether to write the private key to a file. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | n/a |
| <a name="output_private_key_filename"></a> [private\_key\_filename](#output\_private\_key\_filename) | n/a |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | n/a |
| <a name="output_public_key_filename"></a> [public\_key\_filename](#output\_public\_key\_filename) | n/a |
<!-- END_TF_DOCS -->