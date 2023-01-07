terraform {
  required_version = "~> 1.0"
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.2.3"
    }
  }
}

provider "dns" {
  update {
    server        = "192.168.1.121"
    key_name      = "terraform-key."
    key_algorithm = "hmac-sha256"
    key_secret    = var.key_secret
  }
}
