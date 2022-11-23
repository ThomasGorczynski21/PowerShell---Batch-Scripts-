$CopyFromUser = Get-ADUser JBecher -prop MemberOf
$CopyToUser = Get-ADUser pknutson -prop MemberOf
$CopyFromUser.MemberOf | Where{$CopyToUser.MemberOf -notcontains $_} |  Add-ADGroupMember -Member $CopyToUser