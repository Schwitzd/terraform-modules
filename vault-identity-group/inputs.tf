variable "vault_address" {
  description = "The address of the HashiCorp Vault server"
  type        = string
}

variable "vault_token" {
  description = "The authentication token for accessing the HashiCorp Vault server"
  type        = string
  sensitive   = true
}

variable "group_name" {
  description = "Name of the identity group to create"
  type        = string
}

variable "group_description" {
  description = "Human-friendly description of the group"
  type        = string
}

variable "group_type" {
  description = "Type of the group, internal or external"
  type        = string
  validation {
    condition     = can(regex("^(internal|external)$", var.group_type))
    error_message = "Valid values for 'group_type' are 'internal' or 'external'"
  }
}

variable "member_entity_ids" {
  description = "A list of Group IDs to be assigned as group members. Not allowed on external groups"
  type        = list
  default     = []
}

variable "group_policies" {
  description = "A list of policies to apply to the group"
  type        = list
  default     = []
}
