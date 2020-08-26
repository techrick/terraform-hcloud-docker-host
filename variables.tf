# Required configuration
variable "ssh_public_key" {
  type        = string
  description = "SSH Public Key"
}

# Optional configuration
variable "server" {
  type        = map(any)
  description = "Server configuration map"
  default = {
    name        = "docker-host"
    server_type = "cx11"
    image       = "ubuntu-20.04"
    location    = "nbg1"
    backups     = false
  }
}

variable "ssh_public_key_name" {
  type        = string
  description = "SSH Public Key Name"
  default     = "default"
}
