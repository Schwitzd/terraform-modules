variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "entity_name" {
  description = "Name of the identity entity to create"
  type        = string
}

variable "entity_description" {
  description = "Human-friendly description of the identity"
  type        = string
}

variable "entity_policies" {
  description = "A list of policies to apply to the entity"
  type        = list
  default     = []
}