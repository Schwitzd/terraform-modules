terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.0"
    }
  }
  required_version = ">=0.13"
}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}
