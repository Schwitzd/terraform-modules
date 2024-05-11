resource "vault_policy" "main" {
  name   = var.policy_name
  policy = data.vault_policy_document.policies.hcl
}