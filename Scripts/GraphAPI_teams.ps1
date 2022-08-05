get-mguser
$user = Get-MgUser -Filter "displayName eq 'Arun Prasath'"

Get-MgUserJoinedTeam -UserId $user.Id 

$team = Get-MgUserJoinedTeam -UserId $user.Id | where displayName -eq "retail"

Get-MgTeamChannel -TeamId $team.Id 

$channel = Get-MgTeamChannel -TeamId $team.Id | where { $_.displayName -eq "General"}

New-MgTeamChannelMessage -TeamId $team.Id -ChannelId $channel.Id -Body @{ Content="Hello World" }

Get-MgGroup 


$Group= Get-MgGroup | where { $_.DisplayName -eq "testing"}

Get-MgGroupTeam -GroupId $Group.Id

Get-MgGroupTeamChannel -groupid $group.Id

$channel = Get-MgGroupTeamChannel -groupid $group.Id

New-MgGroupTeamChannel -GroupId $Group.id -DisplayName "Scripting Code"

