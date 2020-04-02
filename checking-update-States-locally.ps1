#StateAvailable
#
$stateAvailable = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 1" -namespace "ROOT\ccm\ClientSDK").count
#
Write-host "There are $stateAvailable updates Available from checking EvaluationState."

$updatesavailable = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE ComplianceState = 0" -namespace "ROOT\ccm\ClientSDK").count
Write-host "There are $updatesAvailable updates Available from checking ComplianceState"

#StateSubmitted
$stateSubmitted = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 2" -namespace "ROOT\ccm\ClientSDK").count
Write-host "There are $stateSubmitted updates Submitted."

#StateDetecting
$StateDetecting = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 3" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateDetecting updates detecting."

#StatePreDownload
$StatePreDownload = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 4" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StatePreDownload updates in Predownload"

#StateDownloading
$StateDownloading = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 5" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateDownloading updates being downloaded "

#StateWaitInstall
$StateWaitInstall = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 6" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateWaitInstall updates waiting to be installed"

#StateInstalling
$StateInstalling = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 7" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateInstalling updates installing"

#StatePendingSoftReboot
$StatePendingSoftReboot = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 8" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StatePendingSoftReboot pending a Soft Reboot"

#StatePendingHardReboot
$StatePendingHardReboot = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 9" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StatePendingHardReboot updates pending a Hard Reboot"

#StateWaitReboot
$StateWaitReboot = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 10" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateWaitReboot updates waiting for a reboot"

#StateVerifying
$StateVerifying = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 11" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateVerifying updates waiting for verification"

#StateInstallComplete
$StateInstallComplete = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 12" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StateInstallComplete updates that install is complete"

#StatePendingUpdate
$StatePendingUpdate = (get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE EvaluationState = 20" -namespace "ROOT\ccm\ClientSDK").count
write-host "There are $StatePendingUpdate updates that are pending update"

#
Remove-Variable * -ErrorAction SilentlyContinue
