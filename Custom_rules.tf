resource "cloudflare_ruleset" "geoblock" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_firewall_custom"
  zone_id = "0104bd8f5a23b94a203bdaaff5ebcb1f"
  rules = [{
    action       = "block"
    description  = "Test"
    enabled      = false
    expression   = "(ip.src.country eq \"IN\")"
    id           = null
    last_updated = "2026-09-16T16:47:02.040519Z"
    ref          = "b983aed0aabc475a9cd8b42335b2b83b"
    version      = "4"
  }]
}