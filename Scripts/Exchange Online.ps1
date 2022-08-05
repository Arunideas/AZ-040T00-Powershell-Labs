Install-Module -Name ExchangeOnlineManagement

$ProxyOptions = New-PSSessionOption -ProxyAccessType IEConfig
Connect-ExchangeOnline 

# Room
# Equipment
# Shared

Get-ExoMailbox | measure
New-Mailbox -Room -Name BoardRoom1

Set-Mailbox AdeleV@4dfm21.onmicrosoft.com -MaxReceiveSize 5MB 

Add-MailboxPermission -identity "PradeepG" -User "PradeepG@4dfm21.onmicrosoft.com" -AccessRights FullAccess -InheritanceType All 

Get-MailboxFolderPermission -identity admin | fl


#delegating access
Set-CalendarProcessing -Identity BoardRoom1 -ResourceDelegates "PradeepG@4dfm21.onmicrosoft.com" 

Set-CalendarProcessing -Identity BoardRoom -AutomateProcessing autoaccept -ResourceDelegates $null 

Add-RoleGroupMember -Identity "Recipient Management" -Member "admin@4dfm21.onmicrosoft.com"








