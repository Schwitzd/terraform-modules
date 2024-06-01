locals {
    ssh_keys = var.clone != null ? "enabled" : 0
}