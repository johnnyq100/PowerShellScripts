DO
{

$WaitInstall = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 6" -namespace "ROOT\ccm\ClientSDK").count

$getdateandtime = get-date

Write-host "There are $waitinstall update(s) waiting to be installed. date and time of last check $getdateandtime"

Start-Sleep 60

}
While ( $WaitInstall -ne 0 )