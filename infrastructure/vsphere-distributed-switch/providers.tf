terraform {
  required_version = "~> 1.0"
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 2.2.0"
    }
  }
}

provider "vsphere" {
  alias                = "home"
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = "192.168.1.159"
  allow_unverified_ssl = true
}