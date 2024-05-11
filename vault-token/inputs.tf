variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "token_display_name" {
  description = "String containing the token display name"
  type        = string
  default     = ""
}

variable "token_renewable" {
  description = "Flag to allow to renew this token"
  type        = bool
  default     = true
}

variable "token_no_parent" {
  description = "Flag to create a token without parent"
  type        = bool
  default     = true
}

variable "token_policies" {
  description = "A list of policies to apply to the entity"
  type        = list(any)
  default     = []
}
