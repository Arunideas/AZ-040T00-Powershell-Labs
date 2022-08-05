$pwd = "Passw0rd@123"
$thumb = (New-SelfSignedCertificate -DnsName "scripting.mydomain.com" -CertStoreLocation "cert:\LocalMachine\My"  -KeyExportPolicy Exportable -Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" -NotAfter (Get-Date).AddMonths(24)).Thumbprint
$pwd = ConvertTo-SecureString -String $pwd -Force -AsPlainText
Export-PfxCertificate -cert "cert:\localmachine\my\$thumb" -FilePath c:\temp\democert.pfx -Password $pwd

$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate("C:\temp\democert.pfx", "Passw0rd@123")
$keyValue = [System.Convert]::ToBase64String($cert.GetRawCertData()) | Out-File c:\temp\examplecert_base64.crt

