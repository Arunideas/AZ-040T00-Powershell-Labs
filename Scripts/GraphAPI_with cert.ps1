# Connect to Azure
$tenantID = "34bb343b-85c5-4489-9635-0720eeeff1e3"
$applicationID = "14a291d6-6213-4b50-b633-90c6dd03eb32"
$thumbprint = "5F214B980DD73FEB10CF1A38C6CA9513502BFDC2"
 
Connect-MgGraph -ClientID $applicationID -TenantId $tenantID -CertificateThumbprint $thumbprint
 
# Ger all Azure AD Users
Get-MgUser