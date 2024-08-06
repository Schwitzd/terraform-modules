output "private_key" {
  value     = tls_private_key.virtual_machine_keys.private_key_openssh
  sensitive = true
}

output "public_key" {
  value = tls_private_key.virtual_machine_keys.public_key_openssh
}

output "private_key_filename" {
  value = var.write_to_file ? local_sensitive_file.private_key.filename : "Not written to file"
}

output "public_key_filename" {
  value = var.write_to_file ? local_sensitive_file.public_key.filename : "Not written to file"
}