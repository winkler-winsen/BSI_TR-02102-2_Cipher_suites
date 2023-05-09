# BSI TR-02102 Kryptographische Verfahren: Empfehlungen und Schlüssellängen
# https://www.bsi.bund.de/DE/Themen/Unternehmen-und-Organisationen/Standards-und-Zertifizierung/Technische-Richtlinien/TR-nach-Thema-sortiert/tr02102/tr02102_node.html
# BSI TR-02102-2 Kryptographische Verfahren: Verwendung von Transport Layer Security (TLS)" Version: 2023-1
# https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Publikationen/TechnischeRichtlinien/TR02102/BSI-TR-02102-2.pdf?__blob=publicationFile&v=6
$TLS12CS = Get-Content 'BSI TR-02102-2 TLS1.2 PFS Cipher Suites.txt'
$TLS13CS = Get-Content 'BSI TR-02102-2 TLS1.3 Cipher Suites.txt'

# remove all TlsCipherSuites
Foreach ($CS in (Get-TlsCipherSuite -Name ''))
{Disable-TlsCipherSuite -Name $CS.Name}

# inject TLSv12 TlsCipherSuites
Foreach ($CS in $TLS12CS)
{Enable-TlsCipherSuite -Name $CS}

# inject TLSv13 TlsCipherSuites
Foreach ($CS in $TLS13CS)
{Enable-TlsCipherSuite -Name $CS}
