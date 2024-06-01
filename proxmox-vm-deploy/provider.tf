terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
  required_version = ">= 0.13"
}

provider "vault" {
  address          = var.vault_url
  token            = var.vault_token
  skip_child_token = true
}

provider "proxmox" {
  pm_api_url          = var.proxmox_url
  pm_api_token_id     = data.vault_generic_secret.proxmox.data["api_token_id"]
  pm_api_token_secret = data.vault_generic_secret.proxmox.data["api_token_secret"]
  pm_tls_insecure     = true
  pm_debug            = true
}
