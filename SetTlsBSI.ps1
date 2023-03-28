$TLS12CS = Get-Content 'BSI TR-02102-2 TLS1.2 PFS Cipher Suites.txt'
$TLS13CS = Get-Content 'BSI TR-02102-2 TLS1.3 Cipher Suites.txt'

Foreach ($CS in (Get-TlsCipherSuite -Name ''))
{Disable-TlsCipherSuite -Name $CS.Name}

Foreach ($CS in $TLS12CS)
{Enable-TlsCipherSuite -Name $CS}