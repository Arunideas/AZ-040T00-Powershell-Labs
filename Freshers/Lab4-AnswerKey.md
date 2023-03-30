## Exercise 1: Selecting, sorting, and displaying data

### Task 1: Display the current day of the year

1. On **LON-CL1**, select **Start**, and then enter **powersh**.
1. In the search results, right-click **Windows PowerShell** or activate its context menu, and then select **Run as administrator**.
1. In the **Administrator: Windows PowerShell** window, enter the following command, and then press the Enter key:

   ```powershell
   help *date* 
   ```

   > **Note:** Notice the **Get-Date** command.

1. In the console, enter the following command, and then press the Enter key:  

   ```powershell
   Get-Date | Get-Member
   ```

   > **Note:** Notice the **DayOfYear** property.

1. In the console, enter the following command, and then press the Enter key:

   ```powershell
   Get-Date | Select-Object –Property DayOfYear
   ```

1. In the console, enter the following command, and then press the Enter key:

   ```powershell
   Get-Date | Select-Object -Property DayOfYear | fl
   ```

### Task 2: Display information about installed hotfixes

1. In the console, enter the following command, and then press the Enter key:

   ```powershell
   Get-Command *hotfix* 
   ```

   > **Note:** Notice the **Get-Hotfix** command.

1. In the console, enter the following command, and then press the Enter key:

   ```powershell
   Get-Hotfix | Get-Member 
   ```

   > **Note:** The properties of the **Hotfix** object display. If needed, run **Get-Hotfix** to review some of the values that typically display in those properties.

1. In the console, enter the following command, and then press the Enter key:  

   ```powershell
    Get-Hotfix | Select-Object –Property HotFixID,InstalledOn,InstalledBy
   ```