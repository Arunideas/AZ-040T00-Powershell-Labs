---
lab:
    title: 'Lab AnswerKey: Configuring Windows PowerShell' 
    module: 'Module 1 Lesson 1: Getting Started with Windows PowerShell'
--- 

### Task 1: Find commands that'll accomplish specified tasks

1. On **Windows Server 2019**, on the task bar, right‑click **Windows PowerShell**, and then select **Run as Administrator**.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Help *resolve* 
   ```

   or:

   ```ps
   Get-Command *resolve* 
   ```

   or:

   ```ps
   Get-Command -Verb resolve 
   ```

   > **Note:** The first two commands display a list of commands that use *Resolve* anywhere in their names. The third displays a list of commands that use the verb *Resolve* in their name. All three will return the same results in the lab environment. This should lead you to the **Resolve-DNSName** command.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Help *adapter* 
   ```

   or:

   ```ps
   Get-Command *adapter* 
   ```

   or:

   ```ps
   Get-Command -Noun *adapter*
   ```

   or:

   ```ps
   Get-Command -Verb Set -Noun *adapter* 
   ```

   > **Note:** The first three commands display a list of commands that use *Adapter* in their names. The fourth displays a list of commands that have *Adapter* in their names and use the *Set* verb. This should lead you to the **Set-NetAdapter** command.

1. Run **Get-Help Set-NetAdapter** to review the help for that command. This should lead you to the *‑MACAddress* parameter.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Help *sched* 
   ```

   or:

   ```ps
   Get-Command *sched* 
   ```

   or:

   ```ps
   Get-Module *sched* -ListAvailable
   ```

   > **Note:** The first two commands display a list of commands that use *Sched* in their name. The third displays a list of modules with *Sched* in their name, which should lead you to the module **ScheduledTasks**. If you then run the command `Get-Command -Module *ScheduledTasks*`, you'll get a list of commands in that module. This should lead you to the **Enable-ScheduledTask** command.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Command –Verb Block 
   ```

   or:

   ```ps
   Get-Help *block* 
   ```

   > **Note:** These display a list of commands, which should lead you to the **Block-SmbShareAccess** command. Then, run **Get-Help Block-SmbShareAccess** to learn that the command applies a Deny entry to the file share discretionary access control list (DACL).

1. In the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Help *branch*
   ```

   > **Note:** This will cause the help system to conduct a full-text search, because no commands use *branch* in their names.

   A list of topics containing the text *branch* displays, but none appear related to clearing the **BranchCache** cache.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Help *cache* 
   ```

   or:

   ```ps
   Get-Command *cache* 
   ```

   or:

   ```ps
   Get-Command -Verb clear
   ```

   > **Note:** The first two commands will display a list of commands containing *Cache* in the name. The third displays a list of commands using the verb *Clear* in the name. Either way, you should discover the **Clear-BCCache** command.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Help *firewall*
   ```

   or:

   ```ps
   Get-Command *firewall* 
   ```

   or:

   ```ps
   Get-Help *rule*
   ```

   or:

   ```ps
   Get-Command *rule* 
   ```

   > **Note:** These display a list of commands that use those words in their names, which should lead you to the **Get-NetFirewallRule** command.

1. In the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Help Get-NetFirewallRule –Full
   ```

   > **Note:** This will display the help for the command, so you can discover the *–Enabled* parameter.

1. In the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Help *address* 
   ```

   > **Note:** This will display a list of commands that use *address* in their names. This should lead you to the **Get-NetIPAddress** command.

1. In the console, enter the following command, and then press the Enter key:

   ```ps
   Get-Command –Verb suspend
   ```

   > **Note:** This displays a list of commands that use the verb *Suspend* in their names. This should lead you to the **Suspend-PrintJob** command.

1. In the console, enter one of the following commands, and then press the Enter key:

   ```ps
   Get-Alias Type
   ```

   or:

   ```ps
   Get-Command –Noun *content* 
   ```

   > **Note:** The first command displays the alias definition for the **Type** command, which is the command used in **cmd.exe** to review text from a file. The second command returns a list of commands with *Content* in the noun portion of the name. This should lead you to the **Get-Content** command.
