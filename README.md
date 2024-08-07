# terraform-modules

Welcome to my personal Terraform modules repository! This repository contains reusable Terraform modules that I've created to help simplify and streamline infrastructure provisioning and management.

## Modules

This repository includes the following modules:

- **opnsense-firewall-alias**: creates and manages firewall aliases in OPNsense based on provided variables.
- **proxmox-vm-deploy**: provisions and manages QEMU vM in Proxmox, including SSH key generation and VM configuration.
- **ssh-keygen**: generates SSH private and public keys with optional file output, supporting multiple algorithms and configurations.
- **vault-engine**: configures and manages secret engines in Vault
- **vault-entity-alias**: creates and manages entity aliases in Vault
- **vault-entity**: creates and manages identity entities in Vault.
- **vault-identity-group**: creates and manages identity groups in Vault
- **vault-policy**: manages Vault policies by creating or updating a policy
- **vault-token**: manages Vault tokens

## Usage

To use a module from this repository, include the module block in your Terraform configuration and specify the source as this repository. Below is an example of how to call one of the modules.

### Example

Here's an example of how to use the `ssh-keygen` from this repository:

```hcl
# main.tf
module "ssh-key-ed25519" {
  source = "https://github.com/Schwitzd/terraform-modules//ssh-keygen"
  
  algorithm     = "ED25519"
  keys_name     = "foo.example.com"
  write_to_file = true
}

output "ssh-privatekey" {
  value = module.ssh_keygen_test.private_key_filename
}
```
