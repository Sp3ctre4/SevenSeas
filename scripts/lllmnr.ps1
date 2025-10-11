$username = "sevenseas\quentin.hayes"; 
$password = "orchestra"; 
$credential = New-Object System.Management.Automation.PSCredential -ArgumentList @($username,(ConvertTo-SecureString -String $password -AsPlainText -Force)); 
Invoke-WebRequest -Uri "http://pirate-printer-05" -Credential $credential