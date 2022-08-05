1. Login to Client1 and do the following

connect-azaccount 

3.Execute the following commands(use scripting pane not

Remove-AzResourceGroup -Name "Automation"
New-AzResourceGroup -Name "Automation"
New-AzVm -ResourceGroupName 'Automation' -Name 'DC1' -Location 'East US' -Image Win2019Datacenter  -Size Standard_B2s -VirtualNetworkName 'myVnet' -SubnetName 'mySubnet'  -SecurityGroupName 'myNetworkSecurityGroup' -PublicIpAddressName 'myPublicIpAddress' -OpenPorts 80,3389
New-AzVm -ResourceGroupName 'Automation' -Name 'Mem1' -Location 'East US' -Image Win2019Datacenter  -Size Standard_B2s -VirtualNetworkName 'myVnet' -SubnetName 'mySubnet'  -SecurityGroupName 'myNetworkSecurityGroup' -PublicIpAddressName 'myPublicIpAddress1' -OpenPorts 80,3389


4. Connect to DC1 
5. Execute the following commands


New-NetFirewallRule –DisplayName "Allow ICMPv4-In" –Protocol ICMPv4
install-windowsfeature AD-Domain-Services
install-ADDSForest -DatabasePath “C:\Windows\NTDS” -DomainMode “default” -DomainName “MyLab.com” -DomainNetbiosName “Mylab” -ForestMode “default” -InstallDns:$true -LogPath “C:\Windows\NTDS” -NoRebootOnCompletion:$false -SysvolPath “C:\Windows\SYSVOL” -Force:$true


6. Connect to Mem1
7. Execute the following commands


New-NetFirewallRule –DisplayName "Allow ICMPv4-In" –Protocol ICMPv4
add-computer –domainname "Mylab.com"  -restart

#-----

$storageAccount = New-AzStorageAccount -ResourceGroupName "Automation" `
  -Name "mystoragemylab" `
  -SkuName Standard_LRS `
  -Location eastus

  Get-AzSubscription | fl

  $context= Get-AzSubscription 

  Set-AzContext $context.id

  ##---

# Connect to Azure
$tenantID = "34bb343b-85c5-4489-9635-0720eeeff1e3"
$applicationID = "14a291d6-6213-4b50-b633-90c6dd03eb32"
$thumbprint = "5F214B980DD73FEB10CF1A38C6CA9513502BFDC2"
 
#Connect-MgGraph -ClientID $applicationID -TenantId $tenantID -CertificateThumbprint $thumbprint
Connect-AzAccount -CertificateThumbprint $Thumbprint -ApplicationId $ApplicationId -Tenant $TenantId -ServicePrincipal

