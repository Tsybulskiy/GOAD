# https://www.thehacker.recipes/ad/movement/kerberos/delegations/constrained#without-protocol-transition
Set-ADComputer -Identity "testerserver$" -ServicePrincipalNames @{Add='HTTP/testercomp.testers.programmers.kzi'}
Set-ADComputer -Identity "testerserver$" -Add @{'msDS-AllowedToDelegateTo'=@('HTTP/testercomp.testers.programmers.kzi','HTTP/testercomp')}
# Set-ADComputer -Identity "testerserver$" -Add @{'msDS-AllowedToDelegateTo'=@('CIFS/testercomp.testers.programmers.kzi','CIFS/testercomp')}