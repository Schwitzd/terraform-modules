terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
    opnsense = {
      source  = "browningluke/opnsense"
      version = ">=0.9"
    }
  }
  required_version = ">=0.13"
}

provider "vault" {
  address          = "http://localhost:8200"
  token            = var.vault_token
  skip_child_token = true
}

provider "opnsense" {
  uri            = "https://firewall.mylab.io"
  allow_insecure = true
  api_key        = data.vault_generic_secret.opnsense.data["api_key"]
  api_secret     = data.vault_generic_secret.opnsense.data["api_secret"]
}
