/**
 * # proxmox-vm-deploy
 *
 */

resource "tls_private_key" "virtual_machine_keys" {
  count = local.ssh_keys == "enabled" ? 1 : 0

  algorithm = "ED25519"
}

resource "local_sensitive_file" "pem_file" {
  count = local.ssh_keys == "enabled" ? 1 : 0

  filename        = pathexpand("~/.ssh/${local.fqdn}_ed25519")
  file_permission = "600"
  content         = tls_private_key.virtual_machine_keys[0].private_key_openssh
}


resource "proxmox_vm_qemu" "virtual_machines" {
  depends_on = [
    tls_private_key.virtual_machine_keys
  ]
  name                   = var.name
  qemu_os                = var.qemu_os
  desc                   = var.description
  target_node            = var.target_node
  bios                   = var.bios
  clone                  = var.clone != null ? var.clone : null
  full_clone             = var.clone != null ? true : null
  os_type                = var.clone != null ? "cloud-init" : null
  memory                 = var.memory
  sockets                = var.sockets
  cores                  = var.cores
  define_connection_info = var.clone != null ? true : null
  ssh_user               = local.ssh_keys == "enabled" ? var.ssh_user : null
  sshkeys                = local.ssh_keys == "enabled" ? tls_private_key.virtual_machine_keys[0].public_key_openssh : null
  ciuser                 = var.ssh_user != null ? var.ssh_user : null
  ipconfig0              = var.ip_address != null ? "ip=${var.ip_address}/${var.ip_mask},gw=${var.ip_gateway}" : null
  nameserver             = var.dns_servers != null ? var.dns_servers : null
  searchdomain           = var.searchdomain != null ? var.searchdomain : null
  automatic_reboot       = var.automatic_reboot
  vm_state               = var.vm_state
  onboot                 = var.onboot
  agent                  = 1
  tags                   = var.tags

  dynamic "disks" {
    for_each = var.disks
    content {
      for_each = [true]
    }
  }

  dynamic "network" {
    for_each = var.networks

    content {
      model  = network.value["model"]
      bridge = network.value["bridge"]
    }
  }

  vga {
    type = var.vga_type
  }
}