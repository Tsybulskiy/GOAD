Set-ADUser -Identity "jon.snow" -ServicePrincipalNames @{Add='CIFS/thewall.testers.programmers.kzi'}
Get-ADUser -Identity "jon.snow" | Set-ADAccountControl -TrustedToAuthForDelegation $true
Set-ADUser -Identity "jon.snow" -Add @{'msDS-AllowedToDelegateTo'=@('CIFS/testercomp.testers.programmers.kzi','CIFS/testercomp')}