$user = 'Username'
$pass = ConvertTo-SecureString 'MySuperSecretP@ssw0rd!' -AsPlaintext -Force
$cred = New-Object System.Management.Automation.PSCredential($user,$pass)
Invoke-Command -Computer 'hostname' -ScriptBlock { whoami } -Credential $cred
