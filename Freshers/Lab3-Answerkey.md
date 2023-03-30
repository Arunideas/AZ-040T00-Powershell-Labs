### Task 1: Locate and review About help files

1. Ensure you're still signed in to **Windows Server 2019** as **Administrator** from the previous exercise.

1. To find operators used for wildcard string comparison, in the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Help *comparison*
   ```

1. In the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Help about_comparison_operators -ShowWindow
   ```

   Notice the **–Like** operator in the **about_Comparison_Operators Help**, which displays in a modal window.

1. To find the **-Like** operator, in the **Find** text box, enter **wildcard**, and then select **Next**.

1. After reviewing the **about_Comparison_Operators** file, you should learn that typical operators are not case-sensitive. Specific case-sensitive operators are provided in **about_Comparison_Operators**.

1. To display the **COMPUTERNAME** environment variable, in the console, enter the following command, and then press the Enter key:

   ```ps
   $env:computername
   ```

   You could learn about this technique in **about_environment_variables**.
