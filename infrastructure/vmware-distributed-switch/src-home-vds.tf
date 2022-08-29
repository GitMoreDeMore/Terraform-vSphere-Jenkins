module "home-vds" {
  source = "../../modules/distributed-switch"

  providers = {
    vsphere = vsphere.home
  }

  name       = "home-vds"
  datacenter = "Home-DC"
  uplinks    = ["Uplink 1", "Uplink 2"]
}