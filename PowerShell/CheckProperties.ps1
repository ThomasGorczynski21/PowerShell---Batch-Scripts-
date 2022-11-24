Set-ExecutionPolicy RemoteSigned

if (Get-Module -ListAvailable -Name ExchangeOnlineManagement){}
Else{Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser}

Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline

Get-Mailbox -Identity 'User' | Select *

Set-ExecutionPolicy Restricted