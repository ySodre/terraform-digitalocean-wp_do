terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}
provider "digitalocean" {
    token = var.do_token

}

module "wp_stack" {
    source = "ySodre/wp_do/digitalocean"
    version = "1.0.0"
    region = var.region
    wp_vm_count = var.wp_vm_count
    vms_ssh = digitalocean_ssh_key.chave.fingerprint
}

resource "digitalocean_ssh_key" "chave" {
  name       = "wp-ssh"
  public_key = file("/home/sodre/.ssh/wp.key.pub")
}