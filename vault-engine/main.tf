/**
 * # vault-engine
 *
 */

resource "vault_mount" "engine" {
  path        = var.vault_path
  type        = var.vault_type
  description = var.vault_description
}