#Managing Users 


Install-Module Microsoft.Graph 

get-command -module 

Connect-MgGraph
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All,tasks.readwrite,Directory.ReadWrite.All,User.ReadWrite.All,Teamwork.Migrate.All, ChannelMessage.ReadWrite.All"

Find-MgGraphCommand -command New-MgUser | Select -First 1 -ExpandProperty Permissions

$user = Get-MgUser -Filter "displayName eq 'Megan Bowen'"

Get-MgUser



Get-MgUser -UserId $user.id

$params = @{
	AccountEnabled = $true
	DisplayName = "Adele Vance"
	MailNickname = "AdeleV1"
	UserPrincipalName = "AdeleV1@4dfm21.onmicrosoft.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

New-MgUser -BodyParameter $params

#Managing Task/List/Todo

$params = @{
	Title = "A new task"
	Categories = @(
		"Important"
	)
}
New-MgUserTodoListTask -UserId $userId -TodoTaskListId $todoTaskListId -BodyParameter $params

$todoTaskListId = Get-MgUserTodoList -UserId $user
$todoTaskListId


Get-MgUserTodoListTask -UserId $user -TodoTaskListId $todoTaskListId.id | fl

#create List and tasks 

$params = @{
	DisplayName = "Travel items"
}

$List= New-MgUserTodoList -UserId $user -BodyParameter $params 

$list 

$params = @{
	Title = "A new task"
	Categories = @(
		"Important"
	)
}
New-MgUserTodoListTask -UserId $user -BodyParameter $params -TodoTaskListId $List.id

#----------------
#Managing groups 

Get-MgGroup | fl

$group = Get-MgGroup | where {$_.DisplayName -eq "Sales and Marketing"}

Get-MgGroupMember -GroupId $group.Id 

Get-MgGroupMember -GroupId $group.Id | foreach { Get-MgUser -UserId $_.Id}

#create unified group
$params = @{
	Description = "Self help community for library"
	DisplayName = "Library Assist"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $false
	MailNickname = "library"
	SecurityEnabled = $true
}

New-MgGroup -BodyParameter $params

$params = @{
	AccountEnabled = $true
	DisplayName = "Kumar"
	MailNickname = "kumar"
	UserPrincipalName = "kumar@4dfm21.onmicrosoft.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

$user=New-MgUser -BodyParameter $params

New-MgGroupMember -GroupId $group.id -DirectoryObjectId $user.id

#Licensing

Get-MgUserLicenseDetail -UserId $user.id


