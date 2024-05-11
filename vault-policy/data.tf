data "vault_policy_document" "policies" {
  dynamic "rule" {
    for_each = var.policy_rules
    content {
      path         = var.policy_rules[rule.key].path
      capabilities = var.policy_rules[rule.key].capabilities
      description  = var.policy_rules[rule.key].description
    }
  }
}
