variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "vault_path" {
  description = "Where the secret backend will be mounted"
  type        = string
}

variable "vault_type" {
  description = "Type of the backend engine"
  type        = string
  validation {
    condition     = can(regex("^(kv-v2)$", var.vault_type))
    error_message = "Valid value for 'vault_type' is 'kv-v2'"
  }
}

variable "vault_description" {
  description = "Human-friendly description of the Vault"
  type        = string
}