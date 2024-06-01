terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.14"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
  required_version = ">= 0.13"
}

provider "vault" {
  address          = "http://localhost:8200"
  token            = var.vault_token
  skip_child_token = true
}

provider "proxmox" {
  pm_api_url          = "https://proxmox.mylab.io:8006/api2/json"
  pm_api_token_id     = data.vault_generic_secret.proxmox.data["api_token_id"]
  pm_api_token_secret = data.vault_generic_secret.proxmox.data["api_token_secret"]
  pm_tls_insecure     = true
  pm_debug            = true
}
