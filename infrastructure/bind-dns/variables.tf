variable "ttl" {
  default = 3600
}

variable "zone" {
  default = "miked.lab."
}

variable "reversezone" {
  default = "1.168.192.in-addr.arpa."
}

variable "key_secret" {}

variable "records" {
  type = map(any)
  default = {
    gateway = {
      address = "192.168.1.1"
    }
    jenkins = {
      address = "192.168.1.192"
    }
    miked-pc = {
      address = "192.168.1.232"
    }
    intpc = {
      address = "192.168.1.167"
    }
    mikedc01 = {
      address = "192.168.1.201"
    }
    mikedc02 = {
      address = "192.168.1.202"
    }
    mikecert01 = {
      address = "192.168.1.150"
    }
    mikevct01 = {
      address = "192.168.1.159"
    }
    mikehost01 = {
      address = "192.168.1.110"
    }
    mikehost02 = {
      address = "192.168.1.116"
    }
    mikewitness = {
      address = "192.168.1.117"
    }
  }
}