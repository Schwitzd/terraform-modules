resource "vault_identity_entity" "entity" {
  name     = var.entity_name
  policies = var.entity_policies
  metadata = {
    description = var.entity_description
  }
}
