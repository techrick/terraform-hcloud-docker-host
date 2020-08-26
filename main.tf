resource "hcloud_ssh_key" "default" {
  name       = var.ssh_public_key_name
  public_key = var.ssh_public_key
}

resource "hcloud_server" "server" {
  name        = var.server.name
  image       = var.server.image
  server_type = var.server.server_type
  location    = var.server.location
  backups     = var.server.backups
  ssh_keys    = [var.ssh_public_key_name]
  user_data   = file("${path.module}/user_data/${var.server.image}.yaml")
}
