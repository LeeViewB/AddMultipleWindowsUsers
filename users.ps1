[string]$password = "Abracadabra1234"
[string]$description = "This is a test local user account"

###########################################
## Do not modify the below
###########################################
Write-Host "Getting Excel file with the user names..."
[array]$users = @()
$users = Import-Csv "$PSScriptRoot\users.csv"

##converting password to secure string
$secPass = ConvertTo-SecureString $password -AsPlainText -Force

Write-Host "Imported users.. Creating a local user for each one of them"
Foreach($user in $users){
    $firstName = $user.Firstname
    $lastname = $user.Lastname
    Write-Host "The username will be: $lastname $firstname" -BackgroundColor Yellow
    Write-Host "Creating it..."
    [string]$fullName = "$lastname $firstname"
    [string]$name = "$lastname $firstname"
    New-LocalUser -Name $name -FullName $fullname -Description $description -Password $secPass -PasswordNeverExpires -AccountNeverExpires -UserMayNotChangePassword

}

