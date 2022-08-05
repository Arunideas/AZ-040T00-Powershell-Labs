# Connect to Azure
$tenantID = "34bb343b-85c5-4489-9635-0720eeeff1e3"
$applicationID = "41c74b8e-fa2e-4166-918e-76566a9aa634"
$thumbprint = "7E7016013AA33549DA6BBF84040CB29D737CEDC4"
 
Connect-MgGraph -ClientID $applicationID -TenantId $tenantID -CertificateThumbprint $thumbprint
 
# Ger all Azure AD Users
Get-MgUser