resource "dnsimple_zone_record" "files" {
  name      = "files"
  type      = "CNAME"
  value     = "web.messagingengine.com"
  zone_name = var.apex
}
