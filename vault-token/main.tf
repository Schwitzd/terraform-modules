resource "vault_token" "main" {
  display_name = var.token_display_name
  policies     = var.token_policies
  renewable    = var.token_renewable
  no_parent    = var.token_no_parent
}