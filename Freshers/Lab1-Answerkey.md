# Lab answer key: Configuring Windows PowerShell, and finding and running commands

## Exercise 1: Configuring the Windows PowerShell console application

### Task 1: Start the console application as Administrator, and pin the Windows PowerShell icon to the taskbar

1. On **Windows Server 2019**, select **Start**.
1. Enter **powershell** to display the Windows PowerShell icon. Make sure that the icon name displays **Windows PowerShell** and not **Windows PowerShell (x86)**.
1. Right-click **Windows PowerShell** or activate its context menu, and then select **Run as administrator**.
1. Make sure that the window title bar reads **Administrator** and doesn't include the text **(x86)**. This indicates that it is the 64-bit console application and that an administrator is running it.
1. On the taskbar, right-click the **Windows PowerShell** icon or activate its context menu, and then select **Pin to taskbar**. The **Windows PowerShell console** should now be open, run by **Administrator**, and available on the taskbar for future use.

### Task 2: Configure the Windows PowerShell console application

1. To configure Windows PowerShell to use the **Consolas** font:

   a.   Select the control box in the upper-left corner of the **Windows PowerShell console** window.

   b.   Select **Properties**.

   c.    In the **“Windows PowerShell” Properties** dialog box, select the **Font** tab, and then, in the **Font** list, select **Consolas**.

   d.   Select **16** in the **Size** list.

1. To select alternate display colors, on the **Colors** tab, review the available **Screen Text** and **Screen Background** colors.

    > **Note:** Experiment with various combinations. You can use the color picker to change colors quickly to improve readability.

1. To resize the window and remove the horizontal scroll bar:

   a.   On the **Layout** tab, in the **Window Size** settings, change the area’s **Width** and **Height** values until the **Windows PowerShell** console pane preview fits completely within the **Window Preview** area.

   b.   On the **Layout** tab, in the **Screen Buffer** **Size** settings, change the **Width** value to be the same as the **Width** value in the **Windows Size** settings.

1. Select **OK**. The console application should be ready for use.

### Task 3: Start a shell transcript

- In the **Windows PowerShell console**, enter the following command, and then press the Enter key:

   ```ps
   Start-Transcript C:\DayOne.txt
   ```

    > **Note:** You've now started a transcript of your Windows PowerShell session. It'll save all the commands you enter and the command output to the text file until you run **Stop‑Transcript** or close the Windows PowerShell window. You can review the contents of the transcript at any time by opening **C:\DayOne.txt**.

### Exercise 1 results

After completing this exercise, you'll have opened and configured the Windows PowerShell console application and configured its appearance and layout.

## Exercise 2: Configuring the Windows PowerShell ISE application

### Task 1: Open the Windows PowerShell ISE application as Administrator

1. In the **Windows PowerShell console**, enter **ise**, and then press the Enter key.

   > **Note:** This method of opening the ISE will work correctly only when an administrator is running the console.

1. Close the ISE window.

1. Right-click the **Windows PowerShell** icon on the taskbar or activate its context menu, and then select **Run ISE as Administrator**. You should now be running Windows PowerShell ISE as **Administrator**.

### Task 2: Customize the ISE's appearance to use a single-pane view, hide the Command pane, and adjust the font size

1. To configure the ISE to use the single-pane view:

    a. On the **Windows PowerShell ISE** toolbar, select the **Show Script Pane Maximized** option.
    
    b. Select the **Hide Script Pane** up-arrow icon to display the console.
    
    > **Note:** Alternatively, you can press the **Ctrl+R** key combination.

1. Select the **Show** **Command Add-on** option to review the **Commands** pane, if it isn't showing.

1. Select the **Show Command Add-on** option to hide the **Commands** pane.

1. Use the slider in the lower-right corner of the window to adjust the font size until you can review it comfortably.

1. Close the **Windows PowerShell ISE** and the **Windows PowerShell** windows.
