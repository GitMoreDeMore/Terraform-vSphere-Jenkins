module "vm-folder-client-code" {
  source = "../../modules/folder"

  providers = {
    vsphere = vsphere.home
  }

  client_code = var.client_code
  datacenter  = "Home-DC"
}