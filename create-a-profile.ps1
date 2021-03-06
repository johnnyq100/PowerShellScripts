$doesprofileexist = test-path $profile
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$texttoadd = "set-location $desktoppath"
$getuser = whoami
$windowstitle = '$host.ui.RawUI.WindowTitle'
$addtogether = $windowstitle + " = " +'"' + $getuser + '"'

If ( $doesprofileexist -eq $false) {
Write-host -ForegroundColor yellow -BackgroundColor red "Profile does not exist"
write-host "Let's create a profile for you!!"
New-Item -path $profile -type file –force
Write-host "Your new Profile has been created."
Start-Sleep 2
$texttoadd | Out-File "$profile" -Append
$addtogether | Out-File "$profile" -Append

}
else
{

write-host -fore Green "Profile does exist"
}
Remove-Variable * -ErrorAction SilentlyContinue 