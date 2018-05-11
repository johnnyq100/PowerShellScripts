# This is a simpple get of all instances of CCM_SoftwareUpdate from root\CCM\ClientSDK 
$MissingUpdates = Get-WmiObject -Class CCM_SoftwareUpdate -Filter ComplianceState=0 -Namespace root\CCM\ClientSDK 
 
# The following is done to do 2 things: Get the missing updates (ComplianceState=0)  
# and take the PowerShell object and turn it into an array of WMI objects 
$MissingUpdatesReformatted = @($MissingUpdates | ForEach-Object {if($_.ComplianceState -eq 0){[WMI]$_.__PATH}}) 

# The following is the invoke of the CCM_SoftwareUpdatesManager.InstallUpdates with our found updates 
# NOTE: the command in the ArgumentList is intentional, as it flattens the Object into a System.Array for us 
# The WMI method requires it in this format. 
$InstallReturn = Invoke-WmiMethod -Class CCM_SoftwareUpdatesManager -Name InstallUpdates -ArgumentList (,$MissingUpdatesReformatted) -Namespace root\ccm\clientsdk 