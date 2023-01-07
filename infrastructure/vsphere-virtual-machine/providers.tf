terraform {
  required_version = "~> 1.0"
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 2.2.0"
    }
    dns = {
      source  = "hashicorp/dns"
      version = "3.2.3"
    }
  }
}

provider "vsphere" {
  alias                = "home"
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

provider "dns" {
  update {
    server        = "192.168.1.121"
    key_name      = "terraform-key."
    key_algorithm = "hmac-sha256"
    key_secret    = var.key_secret
  }
}