module "vsan-vmotion-vds" {
  source = "../../modules/distributed-switch"

  providers = {
    vsphere = vsphere.home
  }

  name       = "vsan-vmotion-vds"
  datacenter = "Home-DC"
  uplinks    = ["Uplink 1", "Uplink 2"]
}