module "vm-tag-client-code" {
  source = "../../modules/tag"

  providers = {
    vsphere = vsphere.home
  }

  client_code = var.client_code
  datacenter  = "Home-DC"
}