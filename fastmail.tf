module "fastmail-dns" {
  source = "github.com/pbyrne/terraform-fastmail-dnsimple"

  apex = var.apex
}

resource "dnsimple_zone_record" "files" {
  name      = "files"
  type      = "CNAME"
  value     = "web.messagingengine.com"
  zone_name = var.apex
}
