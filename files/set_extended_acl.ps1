# Define source & destination objects, and the right GUID
$srcobj = (Get-ADUSer -Identity "amelia.doppler").sid
$dstobj = (Get-ADUser -Identity "james.norrington").DistinguishedName
$extended_right_guid = "00299570-246d-11d0-a768-00aa006e0529"
# Initialize Class Objects
$dstacl = [ADSI]("LDAP://" + $dstobj)
$adRights = [System.DirectoryServices.ActiveDirectoryRights] "ExtendedRight"
$type = [System.Security.AccessControl.AccessControlType] "Allow"
$inheritanceType = [System.DirectoryServices.ActiveDirectorySecurityInheritance] "All"
# Add Entry to Destination Object
$ace = New-Object System.DirectoryServices.ActiveDirectoryAccessRule $srcobj,$adRights,$type,$extended_right_guid,$inheritanceType
$dstacl.AddAccessRule($ace)
Set-Acl -Acl Object $dstacl -path $dstobj
