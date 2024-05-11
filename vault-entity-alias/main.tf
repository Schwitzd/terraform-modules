resource "vault_identity_entity_alias" "entity_alias" {
  name           = var.entity_alias_name
  mount_accessor = data.vault_auth_backend.main.accessor
  canonical_id   = var.canonical_id
}