/**
 * # vault-entity-group
 *
 */

resource "vault_identity_group" "main" {
  name     = var.group_name
  type     = var.group_type
  policies = var.group_policies
  metadata = {
    description = var.group_description
  }
  member_entity_ids = var.member_entity_ids
}