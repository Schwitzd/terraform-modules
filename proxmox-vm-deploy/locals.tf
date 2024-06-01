locals {
  ssh_keys = var.clone != null ? "enabled" : 0
  fqdn     = "${var.name}.${var.domain}"
}
