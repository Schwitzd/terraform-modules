output "private_key" {
  value     = tls_private_key.ssh_keys.private_key_openssh
  sensitive = true
}

output "public_key" {
  value = tls_private_key.ssh_keys.public_key_openssh
}

output "private_key_filename" {
  value = var.write_to_file ? local_sensitive_file.private_key[0].filename : "Not written to file"
}

output "public_key_filename" {
  value = var.write_to_file ? local_sensitive_file.public_key[0].filename : "Not written to file"
}