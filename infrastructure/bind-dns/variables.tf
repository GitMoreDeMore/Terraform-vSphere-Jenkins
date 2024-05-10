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
    mikevct02 = {
      address = "192.168.1.10"
    }
    mikehost01 = {
      address = "192.168.1.5"
    }
    mikehost02 = {
      address = "192.168.1.116"
    }
    mikehost04 = {
      address = "192.168.1.155"
    }
    mikehoststorage = {
      address = "192.168.1.114"
    }
    mikewitness = {
      address = "192.168.1.117"
    }
    mikedock01 = {
      address = "192.168.1.142"
    }
    mikedock02 = {
      address = "192.168.1.143"
    }
    k3s-rancher = {
      address = "192.168.1.170"
    }
    k3s-node-1 = {
      address = "192.168.1.171"
    }
    k3s-node-2 = {
      address = "192.168.1.172"
    }
    k3s-node-3 = {
      address = "192.168.1.173"
    }
    rancher = {
      address = "192.168.1.50"
    }
  }
}