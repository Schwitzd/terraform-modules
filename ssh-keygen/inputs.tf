variable "algorithm" {
  description = "Name of the algorithm to use when generating the private key. Supported values are: RSA, ECDSA, ED25519."
  type        = string
  default     = "ED25519"
  validation {
    condition     = contains(["RSA", "ECDSA", "ED25519"], var.algorithm)
    error_message = "The algorithm must be one of the following: RSA, ECDSA, ED25519."
  }
}

variable "ecdsa_curve" {
  description = "When algorithm is ECDSA, the name of the elliptic curve to use. Supported values are: P224, P256, P384, P521."
  type        = string
  default     = "P384"
  validation {
    condition     = contains(["P224", "P256", "P384", "P521"], var.ecdsa_curve)
    error_message = "The ecdsa_curve must be one of the following: P224, P256, P384, P521 when algorithm is ECDSA."
  }
}

variable "rsa_bits" {
  description = "When algorithm is RSA, the size of the generated RSA key, in bits."
  type        = number
  default     = 4096
  validation {
    condition     = var.algorithm != "RSA" || (var.rsa_bits >= 512 && var.rsa_bits <= 16384)
    error_message = "The rsa_bits must be between 512 and 16384 when algorithm is RSA."
  }
}

variable "write_to_file" {
  description = "Whether to write the private key to a file."
  type        = bool
  default     = true
}

variable "keys_path" {
  description = "The path where SSH keys will be stored."
  type        = string
  default     = "~/.ssh"
}

variable "keys_name" {
  description = "The base name for the SSH key files."
  type        = string
}

