# AddMultipleWindowsUsers
Add multiple local Windows user accounts, no admin rights, account never expire, password never expire. 
They are imported from an Excel File.

# PowerShell-AddMultipleWindows Users

You will need:
1. Edit the users.csv file and enter the usernames you want in the "firstname" and "lastname" columns.
2. Run PowerShell ISE as administrator, open the users.ps1.
3. Enter the password you want in the password variable on row 1. Please note that the same password will be set for all users
<B>Users will not be able to change the password when they login. If you don't want this, remove the "-UserMayNotChangePassword" parameter on row 22.</b>
4. Enter the description you want in the description variable on row 2.
5. Run the script. The accounts should be created. They won't have admin rights.
<B>IMPORTANT</b>: Both the Excel and the PS1 files need to be in the same folder.
