# terraform-hcloud-docker-host
An Terraform module to deploy a single Docker host (in swarm mode) on Hetzner Cloud. See the variables file for the available configuration settings.

Example config:

```
ssh_public_key  = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHT4IOj68KVg6iYmDNxfsZrUNZraXmWLNfIbFSOfsXKX"

server = {
    name               = "docker-host-01"
    server_type        = "cx11"
    image              = "ubuntu-20.04"
    location           = "nbg1"
    backups            = false
}
```


