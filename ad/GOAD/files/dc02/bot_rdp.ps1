# https://learn.microsoft.com/fr-fr/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon
if(-not(query session robb.stark /server:testerserver)) {
  #kill process if exist
  Get-Process mstsc -IncludeUserName | Where {$_.UserName -eq "TESTERS\robb.stark"}|Stop-Process
  #run the command
  mstsc /v:testerserver
}