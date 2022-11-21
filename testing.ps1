$Password = Read-Host -AsSecureString
New-LocalUser "local_admin" -Password $Password -FullName "Local Administrator" -Description "Built-In account"
Add-LocalGroupMember -Group "Administrators" -Member "local_admin"
