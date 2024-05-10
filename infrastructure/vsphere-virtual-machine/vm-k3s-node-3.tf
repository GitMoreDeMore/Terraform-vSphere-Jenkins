module "k3s-node-3" {
  source = "../../modules/virtual-machine"

  providers = {
    vsphere = vsphere.home
  }

  guest_name   = "k3s-node-3"
  role         = "misc"
  os           = "k3s"
  guest_vcpu   = "4"
  guest_memory = "8"
  guest_disks = [
    { size = 32 }
  ]
  port_group           = "management"
  guest_ipv4_ip        = "192.168.1.173"
  guest_ipv4_netmask   = "24"
  guest_ipv4_gateway   = "192.168.1.1"
  datacenter           = "home-dc"
  compute_cluster      = "home"
  datastore            = var.datastore
  datastore_cluster    = var.datastore_cluster
  client_code          = var.client_code
  client_time_zone     = var.client_time_zone
  win_local_admin_pass = var.win_local_admin_pass
  win_domain           = "" #var.win_domain
  domain_admin_user    = var.domain_admin_user
  domain_admin_pass    = var.domain_admin_pass
  run_once             = var.run_once
}