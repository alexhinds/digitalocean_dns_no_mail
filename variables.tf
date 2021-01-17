variable "domain" {
  type        = string
  description = "The domain to managed spf, dmarc, and dkim, records in."
}

variable "ttl" {
  type        = number
  default     = 1800
  description = "The TTL for managed DNS entries."
}
