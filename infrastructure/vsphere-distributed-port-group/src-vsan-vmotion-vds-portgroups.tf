module "vmotion" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name            = "vmotion"
  datacenter      = "Home-DC"
  vds             = "vsan-vmotion-vds"
  vlan_id         = "0"
  active_uplinks  = ["Uplink 2"]
  standby_uplinks = ["Uplink 1"]
}

module "vsan-direct" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name            = "vsan-direct"
  datacenter      = "Home-DC"
  vds             = "vsan-vmotion-vds"
  vlan_id         = "0"
  active_uplinks  = ["Uplink 1"]
  standby_uplinks = ["Uplink 2"]
}