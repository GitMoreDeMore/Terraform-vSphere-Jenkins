variable "vsphere_server" {}

variable "vsphere_user" {}

variable "vsphere_password" {
  sensitive = true
}

variable "key_secret" {}

variable "client_code" {
  default = "md"
}

variable "client_time_zone" {
  default = "cst"
}

variable "role" {
  default = ""
}

variable "datastore" {
  default = null
}

variable "datastore_cluster" {
  default = "h4_nvme"
}

variable "run_once" {
  description = "List of Comamnd to run during first logon (Automatic login set to 1)."
  type        = list(any)
  default     = []
}

variable "win_local_admin_pass" {
  sensitive = true
}

variable "win_domain" {
  default = "miked.lab"
}

variable "domain_admin_user" {}

variable "domain_admin_pass" {
  sensitive = true
}