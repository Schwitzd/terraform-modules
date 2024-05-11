variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "policy_name" {
  description = "The name of the policy"
  type        = string
}

variable "policy_rules" {
  description = "A map of policy names to their definitions"
  type = map(object({
    path         = string
    capabilities = list(string)
    description  = string
  }))
}
