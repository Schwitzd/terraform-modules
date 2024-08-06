locals {
  lowercase_algorithm = lower(var.algorithm)
  private_key_filename = pathexpand("${var.keys_path}/${var.keys_name}_${local.lowercase_algorithm})")
  public_key_filename = pathexpand("${locals.private_key_filename}.pub")
}