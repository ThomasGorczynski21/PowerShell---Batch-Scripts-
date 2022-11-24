$CopyFromUser = Get-ADUser "USER" -prop MemberOf
$CopyToUser = Get-ADUser "USER" -prop MemberOf
$CopyFromUser.MemberOf | Where{$CopyToUser.MemberOf -notcontains $_} |  Add-ADGroupMember -Member $CopyToUser