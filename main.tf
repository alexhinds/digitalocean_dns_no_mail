terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_record" "spf" {
  domain = var.domain
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 -all"
  ttl    = var.ttl
}

resource "digitalocean_record" "dmarc" {
  domain = var.domain
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1;p=reject;sp=reject;adkim=s;aspf=s;fo=1"
  ttl    = var.ttl
}

resource "digitalocean_record" "dkim" {
  domain = var.domain
  type   = "TXT"
  name   = "_domainkey"
  value  = "v=DKIM1; p="
  ttl    = var.ttl
}
