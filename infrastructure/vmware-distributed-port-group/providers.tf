provider "vsphere" {
  alias                = "home"
  user                 = "terraform@vsphere.local"
  password             = var.vsphere_password
  vsphere_server       = "192.168.1.159"
  allow_unverified_ssl = true
}