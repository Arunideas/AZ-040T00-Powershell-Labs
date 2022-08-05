Install-Module AzureAD

Connect-AzureAD

$UserPassword=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile

$UserPassword.Password="Pa55w.rd"
New-AzureADUser -DisplayName "Vivek Kumar" -MailNickName "vivek"   -GivenName "Vivek" -SurName "Kumar" -UserPrincipalName Vivek@4dfm21.onmicrosoft.com -UsageLocation US -PasswordProfile $UserPassword -AccountEnabled $true


Get-AzureADUser -ObjectId vivek@4dfm21.onmicrosoft.com

Get-AzureADUser -All $true

Remove-AzureADUser -ObjectId vivek@4dfm21.onmicrosoft.com

set-azureAdUser -ObjectId vivek@4dfm21.onmicrosoft.com -City "Bangalore"

$pwd = ConvertTo-SecureString -String "Passw0rd@123" -AsPlainText -Force 

Set-AzureADUserPassword -ObjectId vivek@4dfm21.onmicrosoft.com -Password $pwd



#groups 

New-AzureADGroup -DisplayName "Marketing Group1" -MailEnabled $false -SecurityEnabled $true -MailNickname "MarketingGrp"

$Groupname= Get-AzureADGroup | where displayname -eq "testing"

Set-AzureADGroup -ObjectId $Groupname.ObjectId -Description "This is a different description"

Remove-AzureADGroup

Get-AzureADGroupMember -ObjectId $Groupname.ObjectId

Add-AzureADGroupMember

Remove-AzureADGroupMember

Get-AzureADGroupOwner -ObjectId $Groupname.ObjectId

Add-AzureADGroupOwner 

# Roles 

Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq 'User Administrator'} | fl

$roleTemplate = Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq 'User Administrator'}
Enable-AzureADDirectoryRole -RoleTemplateId $roleTemplate.ObjectId


$user = Get-AzureADUser -ObjectID AbbieP@adatum.com
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq 'User Administrator'}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $user.ObjectID



