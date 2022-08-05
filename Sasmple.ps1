
Install-Module microsoft.graph 

Find-MgGraphCommand -Command Get-MgUser | select -first 1 -ExpandProperty permissions 

Connect-MgGraph -Scopes "User.ReadWrite.All","User.ReadBasic.All","User.Read.All","directory.read.all","directory.readwrite.all"

$user= get-mguser | where { $_.DisplayName -eq "Kumar"}


$todoTask = Get-MgUserTodoList -UserId $user

Get-MgUserTodoListTask -UserId $user -TodoTaskListId $todoTask.Id

$params = @{
	AccountEnabled = $true
	DisplayName = "Karthick"
	MailNickname = "AdeleV"
	UserPrincipalName = "karthick@4dfm21.onmicrosoft.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

New-MgUser -BodyParameter $params

$params = @{
	BusinessPhones = @(
		"+1 425 555 0109"
	)
	OfficeLocation = "18/2111"
}

# A UPN can also be used as -UserId.
Update-MgUser -UserId $user.Id -BodyParameter $params

$user.DisplayName

Remove-MgUser -UserId $user.id



