---
lab:
    title: 'Lab A: Using PowerShell pipeline'
    module: 'Module 2: Working with the Windows PowerShell pipeline'
---

# Lab: Using PowerShell pipeline

## Scenario

One of your administrative tasks at Adatum Corporation is to configure advanced PowerShell scripts. You need to ensure that you understand the foundations of working with PowerShell pipeline by sorting, filtering, enumerating, and converting objects.

## Objectives

After completing this lab, you'll be able to:

- Select, sort, and display data by using pipelines.
- Filter objects out of the pipeline by using basic and advanced syntax forms.

## Estimated Time: 60 minutes

## Exercise 1: Selecting, sorting, and displaying data

### Exercise scenario 1

In this exercise, you'll produce lists of management information from the computers in your environment. For each task, you'll discover the necessary commands and use **Select-Object**, **Sort‑Object,** and the formatting cmdlets to customize the final output of each command.

The main tasks for this exercise are:

1. Display the current day of the year.
1. Display information about installed hotfixes.

### Task 1: Display the current day of the year

1. On **LON-CL1**, start Windows PowerShell with administrative credentials.
2. Using a keyword such as **date**, find a command that can display the current date.
3. Display the members of the object produced by the command that you found in the previous step.
4. Display only the day of the year.
5. Display the results of the previous command on a single line.

### Task 2: Display information about installed hotfixes

1. Using a keyword such as **hotfix**, find a command that can display a list of the installed hotfixes.
1. Display the members of the object produced by the command that you found in the previous step.
1. Display a list of the installed hotfixes. Display only the installation date, hotfix ID number, and name of the user who installed the hotfix.
1. Display a list of the installed hotfixes. Display only the hotfix ID, the number of days since the hotfix was installed, and the name of the user who installed the hotfix.


### Exercise 1 results

After completing this exercise, you should have produced several custom reports that contain management information from your environment.

## Exercise 2: Filtering objects

### Exercise scenario 2

In this exercise, you'll use filtering to produce lists of management information that include only specified data and elements for the reports you must produce.

The main tasks for this exercise are:


1. Create a report displaying the Security event log entries that have the event ID **4624**.
1. Create a report that displays the disk volumes that are running low on space.
1. Create a report that displays specified Control Panel items.


### Task 1: Create a report displaying the Security event log entries that have the event ID 4624

1. Display only the total number of **Security** event log entries that have the event ID **4624**.
1. Display the full list of the **Security** event log entries that have the event ID **4624**, and display only the time written, event ID, and message.
1. Display only the 10 oldest entries in a format that lets you review the message details.

### Task 2: Create a report that displays the disk volumes that are running low on space

1. Display a list of the disk volumes.
1. Display a list in one column of the volumes that have more than zero bytes of free space.
1. Display a list of the volumes that have less than 99 percent free space and more than zero bytes of free space. Display only the drive letter and disk size, in megabytes (MB).
1. Display a list of the volumes that have less than 10 percent free space and more than zero bytes of free space. This command might produce no results if no volumes on your computer meet the criteria.

   > **Note:** This command might not produce any output on your lab computer if the computer has more than 10 percent free space on each of its volumes.

### Task 3: Create a report that displays specified Control Panel items

1. Display a list of all the Control Panel items.
1. Display the names and descriptions, sorted by name, of the Control Panel items in the **System and Security** category.
1. Display the same list, excluding any Control Panel items that exist in more than one category. Make sure the command performance is optimized.

### Exercise 2 results

After completing this exercise, you should have used filtering to produce lists of management information that include only specified data and elements.
