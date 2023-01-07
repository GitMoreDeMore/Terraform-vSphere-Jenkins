resource "dns_a_record_set" "arecord" {
  for_each  = var.records

  zone      = var.zone
  name      = each.key
  addresses = [each.value.address]
  ttl       = var.ttl
}

resource "dns_ptr_record" "ptr" {
  for_each  = var.records

  zone = var.reversezone
  name = split(".", each.value.address)[3]
  ptr  = "${each.key}.${var.zone}"
  ttl  = var.ttl
}