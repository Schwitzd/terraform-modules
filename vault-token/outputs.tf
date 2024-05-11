output "client_token" {
  description = "String containing the client token if stored in present file"
  value       = vault_token.main.client_token
  sensitive   = true
}
