module "management" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name            = "management"
  datacenter      = "Home-DC"
  vds             = "home-vds"
  vlan_id         = "0"
  active_uplinks  = ["Uplink 1"]
  standby_uplinks = []
}

module "vm_network" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name            = "vm_network"
  datacenter      = "Home-DC"
  vds             = "home-vds"
  vlan_id         = "0"
  active_uplinks  = ["Uplink 1"]
  standby_uplinks = []
}

module "recovery-mgt" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name            = "recovery-mgt"
  datacenter      = "Home-DC"
  vds             = "home-vds"
  type            = "ephemeral"
  auto_expand     = "false"
  vlan_id         = "0"
  active_uplinks  = ["Uplink 1"]
  standby_uplinks = []
}

module "lab-trunk" {
  source = "../../modules/distributed-port-group"

  providers = {
    vsphere = vsphere.home
  }

  name                   = "lab-trunk"
  datacenter             = "Home-DC"
  vds                    = "home-vds"
  active_uplinks         = ["Uplink 1"]
  standby_uplinks        = []
  min_vlan               = "0"
  max_vlan               = "4094"
  allow_forged_transmits = "true"
  allow_mac_changes      = "true"
  allow_promiscuous      = "true"
}