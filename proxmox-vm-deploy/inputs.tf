# Basics
variable "vault_url" {
  description = "The Vault address"
  type        = string
}

variable "vault_token" {
  description = "The Vault API token"
  type        = string
  sensitive   = true
}

variable "proxmox_url" {
  description = "The Proxmox cluster address"
  type        = string
}

variable "target_node" {
  description = "The Proxmox target node for the VM"
  type        = string
}

variable "name" {
  description = "The name of the VM"
  type        = string
}

variable "domain" {
  description = "The domain of the VM"
  type        = string
}

variable "description" {
  description = "The description of the VM"
  type        = string
}

variable "pool" {
  description = "The Proxmox pool to place the VM in"
  type        = string
}

variable "qemu_os" {
  description = "The OS type for the VM"
  type        = string
}

variable "bios" {
  description = "The BIOS type for the VM"
  type        = string

  validation {
    condition     = can(regex("^(seabios|ovmf)$", var.bios))
    error_message = "Valid values for 'bios' are 'seabios' or 'ovmf'"
  }
}

variable "memory" {
  description = "The amount of memory for the VM (in MB)."
  type        = number
}

variable "hotplug" {
  description = "Enable or disable hotplug support for the VM"
  type        = string
}

variable "numa" {
  description = "Enable or disable NUMA configuration for the VM"
  type        = bool
}

variable "sockets" {
  description = "The number of CPU sockets for the VM"
  type        = number
}

variable "cores" {
  description = "The number of CPU cores per socket for the VM"
  type        = number
}

variable "scsihw" {
  description = "The SCSI hardware type for the VM"
  type        = string
}

variable "automatic_reboot" {
  description = "Enable or disable automatic reboot for the VM"
  type        = bool
}

variable "onboot" {
  description = "Whether to have the VM startup after the PVE node starts"
  type        = bool
  default     = false
}

variable "vm_state" {
  description = "The desired state of the VM"
  type        = string
  default     = "stopped"

  validation {
    condition     = can(regex("^(started|stopped|running)$", var.vm_state))
    error_message = "Valid values for 'vm_state' are 'started', 'stopped', or 'running'"
  }
}

variable "vga_type" {
  description = "The VGA type for the Proxmox VM."
  type        = string
  default     = "cirrus"
}

variable "tags" {
  description = "Tags of the VM. This is only meta information"
  type        = string
}

# Template
variable "clone" {
  description = "The base VM from which to clone to create the new VM"
  type        = string
  default     = null
}

variable "ssh_user" {
  description = "The user with which to connect to the guest for preprovisioning"
  type        = string
  default     = null
}

variable "ciuser" {
  description = "Override the default cloud-init user for provisioning"
  type        = string
  default     = null
}

variable "ip_address" {
  description = "NIC ip address"
  type        = string
  default     = null
}

variable "ip_mask" {
  description = "NIC ip address netmask"
  type        = string
  default     = null
}

variable "ip_gateway" {
  description = "NIC ip gateway"
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "DNS servers"
  type        = string
  default     = null
}

variable "searchdomain" {
  description = "DNS domain"
  type        = string
  default     = null
}

# Hardware

variable "disks" {
  description = "List of disks"
  type = list(object({
    slot    = string
    id      = optional(number)
    type    = string
    size    = optional(string)
    storage = string
    discard = optional(bool)
    iso     = optional(string)
  }))
  default = []
}

variable "networks" {
  description = "List of NICs"
  type = map(object({
    model  = string
    bridge = string
  }))
  default = {}
}
