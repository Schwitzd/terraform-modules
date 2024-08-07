/*
  # ssh-keygen

*/

resource "tls_private_key" "ssh_keys" {
  algorithm = var.algorithm

  # ECDSA curve, only set if algorithm is ECDSA
  ecdsa_curve = var.algorithm == "ECDSA" ? var.ecdsa_curve : null

  # RSA bits, only set if algorithm is RSA
  rsa_bits = var.algorithm == "RSA" ? var.rsa_bits : null
}

resource "local_sensitive_file" "private_key" {
  count = var.write_to_file ? 1 : 0

  content         = tls_private_key.ssh_keys.private_key_openssh
  filename        = local.private_key_filename
  file_permission = "600"
}

resource "local_sensitive_file" "public_key" {
  count = var.write_to_file ? 1 : 0

  content         = tls_private_key.ssh_keys.public_key_openssh
  filename        = local.public_key_filename
  file_permission = "644"
}