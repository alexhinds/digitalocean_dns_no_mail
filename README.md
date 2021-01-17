# Digital Ocean DNS no-mail

This is a module to create DNS entries in Digital Ocean which will help prevent people spoofing your domain when sending emails.
It creates 3 records: a SPF, a DMARC, and a DKIM entry; which combine to tell receiving SMTP servers that this domain doesn't allow anyone to send mail on it's behalf, that any mail from this domain should be rejected, and that the only valid key for this domain is null (and thus all checks fail).

For more information see the gov.uk's guidance to [protect domains that don't send email](https://www.gov.uk/guidance/protect-domains-that-dont-send-email).
