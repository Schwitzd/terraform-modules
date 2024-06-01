variable "vault_token" {
  description = "The Vault API token"
  type        = string
  sensitive   = true
}

variable "firewall_aliases" {
  type = list(object({
    name        = string
    type        = string
    content     = set(string)
    stats       = bool
    description = string
  }))

  validation {
    condition     = length([for alias in var.firewall_aliases : alias.type if alias.type != "host"]) == 0
    error_message = "All aliases must have the 'type' field set to 'host'."
  }
}

