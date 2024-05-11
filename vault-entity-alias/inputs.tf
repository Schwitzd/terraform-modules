variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "entity_alias_name" {
  description = "Name of the alias. Name should be the identifier of the client in the authentication source"
  type        = string
}

variable "mount_accessor" {
  description = "Accessor of the mount to which the alias should belong to"
  type        = string
  default     = ""
}

variable "auth_backend" {
  description = "Type of authentication method used to access the Vault"
  type        = string
}

variable "canonical_id" {
  description = "Entity ID to which this alias belongs to"
  type        = string
}