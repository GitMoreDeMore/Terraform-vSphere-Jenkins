module "mikedns02" {
  depends_on = [module.vm-tag-client-code]
  source     = "../../modules/virtual-machine"

  providers = {
    vsphere = vsphere.home
  }

  guest_name   = "mikedns02"
  role         = "dc"
  os           = "linux"
  guest_vcpu   = "2"
  guest_memory = "4"
  guest_disks = [
    {size      = 1},
    {size      = 16},
    {size      = 100},
    {size      = 30},
  ]
  port_group           = "management"
  guest_ipv4_ip        = "192.168.1.122"
  guest_ipv4_netmask   = "24"
  guest_ipv4_gateway   = "192.168.1.1"
  datacenter           = "Home-DC"
  compute_cluster      = "Home"
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