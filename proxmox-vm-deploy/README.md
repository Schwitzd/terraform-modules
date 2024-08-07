<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc2 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc2 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~> 4.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.pem_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [proxmox_vm_qemu.virtual_machines](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc2/docs/resources/vm_qemu) | resource |
| [tls_private_key.virtual_machine_keys](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [vault_generic_secret.proxmox](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automatic_reboot"></a> [automatic\_reboot](#input\_automatic\_reboot) | Enable or disable automatic reboot for the VM | `bool` | n/a | yes |
| <a name="input_bios"></a> [bios](#input\_bios) | The BIOS type for the VM | `string` | n/a | yes |
| <a name="input_ciuser"></a> [ciuser](#input\_ciuser) | Override the default cloud-init user for provisioning | `string` | `null` | no |
| <a name="input_clone"></a> [clone](#input\_clone) | The base VM from which to clone to create the new VM | `string` | `null` | no |
| <a name="input_cores"></a> [cores](#input\_cores) | The number of CPU cores per socket for the VM | `number` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the VM | `string` | n/a | yes |
| <a name="input_disks"></a> [disks](#input\_disks) | List of disks to configure | `map(any)` | n/a | yes |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | DNS servers | `string` | `null` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain of the VM | `string` | n/a | yes |
| <a name="input_hotplug"></a> [hotplug](#input\_hotplug) | Enable or disable hotplug support for the VM | `string` | n/a | yes |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | NIC ip address | `string` | `null` | no |
| <a name="input_ip_gateway"></a> [ip\_gateway](#input\_ip\_gateway) | NIC ip gateway | `string` | `null` | no |
| <a name="input_ip_mask"></a> [ip\_mask](#input\_ip\_mask) | NIC ip address netmask | `string` | `null` | no |
| <a name="input_iso"></a> [iso](#input\_iso) | The ISO image for installing the VM's operating system. | `string` | `null` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of memory for the VM (in MB). | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the VM | `string` | n/a | yes |
| <a name="input_networks"></a> [networks](#input\_networks) | n/a | <pre>map(object({<br>    model  = string<br>    bridge = string<br>  }))</pre> | `{}` | no |
| <a name="input_numa"></a> [numa](#input\_numa) | Enable or disable NUMA configuration for the VM | `bool` | n/a | yes |
| <a name="input_onboot"></a> [onboot](#input\_onboot) | Whether to have the VM startup after the PVE node starts | `bool` | `false` | no |
| <a name="input_pool"></a> [pool](#input\_pool) | The Proxmox pool to place the VM in | `string` | n/a | yes |
| <a name="input_proxmox_url"></a> [proxmox\_url](#input\_proxmox\_url) | The Proxmox cluster address | `string` | n/a | yes |
| <a name="input_qemu_os"></a> [qemu\_os](#input\_qemu\_os) | The OS type for the VM | `string` | n/a | yes |
| <a name="input_scsihw"></a> [scsihw](#input\_scsihw) | The SCSI hardware type for the VM | `string` | n/a | yes |
| <a name="input_searchdomain"></a> [searchdomain](#input\_searchdomain) | DNS domain | `string` | `null` | no |
| <a name="input_sockets"></a> [sockets](#input\_sockets) | The number of CPU sockets for the VM | `number` | n/a | yes |
| <a name="input_ssh_user"></a> [ssh\_user](#input\_ssh\_user) | The user with which to connect to the guest for preprovisioning | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags of the VM. This is only meta information | `string` | n/a | yes |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | The Proxmox target node for the VM | `string` | n/a | yes |
| <a name="input_vault_token"></a> [vault\_token](#input\_vault\_token) | The Vault API token | `string` | n/a | yes |
| <a name="input_vault_url"></a> [vault\_url](#input\_vault\_url) | The Vault address | `string` | n/a | yes |
| <a name="input_vga_type"></a> [vga\_type](#input\_vga\_type) | The VGA type for the Proxmox VM. | `string` | `"cirrus"` | no |
| <a name="input_vm_state"></a> [vm\_state](#input\_vm\_state) | The desired state of the VM | `string` | `"stopped"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->