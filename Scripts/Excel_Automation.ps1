
Get-ChildItem HKLM:\Software\Classes -ErrorAction SilentlyContinue | select $_.pspath | where { $_ -like "*CLSID*"}


Get-ChildItem HKLM:\Software\Classes -ErrorAction SilentlyContinue | Where-Object {
	$_.PSChildName -match '^\w+\.\w+$' -and (Test-Path -Path "$($_.PSPath)\CLSID")
} | Select-Object -ExpandProperty PSChildName

$obj = @()

$objectInstance = New-Object -TypeName psobject 

Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Servername" -Value "Server2"
Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Service" -Value "service2"
Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Eventlog" -Value "1025"

$obj = $obj + $objectInstance
$objectInstance = New-Object -TypeName psobject 

Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Servername" -Value "Server1"
Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Service" -Value "service1"
Add-Member -InputObject $objectInstance -MemberType NoteProperty -Name "Eventlog" -Value "1024"

$obj = $obj + $objectInstance

$obj


$ExcelObj = New-Object -comobject Excel.Application
$ExcelObj.visible=$true

$ExcelObj | fl
$workbook = $excelobj.Workbooks.Add() 
#$sheet = $workbook.Worksheets.add()
$activesheet = $workbook.sheets("Sheet1")

#$activesheet=$ExcelObj.Worksheets.item("sheet2")
$activesheet.Cells(1,1).Value = "server1"
$activesheet.Cells(1,1).text

$row= $activesheet.UsedRange.Rows.Count
$col = $activesheet.UsedRange.Columns.Count

$row

$obj = @()
$objinstance=New-Object -TypeName psobject 

for($j=1;$j -lt $col;$j++)
{
    $header=$activesheet.Cells(1,$j).text
    Add-Member -MemberType NoteProperty -Name $header -Value $null -InputObject $objinstance
}

$objinstance

for($i=1;$i -lt $row;$i++)
{
    for($j=1;$j -lt $col;$j++)
    {
        
        $objinstance.server2 = $activesheet.Cells.Item($i,1).text
        $objinstance.server3 = $activesheet.Cells.Item($i,1).text
        $objinstance.server4 = $activesheet.Cells.Item($i,1).text

    }
    $obj = $obj + $objinstance
}



#---
$File = "C:\temp\Test.xlsx"
$ExcelObj = New-Object -comobject Excel.Application
$ExcelObj.visible=$true
$WorkBook = $ExcelObj.Workbooks.Open($File)
$sheet1 = $WorkBook.Sheets("Sheet1")
$sheet1.UsedRange.Rows.Count

$WorkBook.Close($true)






