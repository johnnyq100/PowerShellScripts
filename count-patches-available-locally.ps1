#@(get-wmiobject -ComputerName sjl01wftp01 -query "SELECT * FROM CCM_SoftwareUpdate WHERE ComplianceState = 0" -namespace "ROOT\ccm\ClientSDK").count

@(get-wmiobject -query "SELECT * FROM CCM_SoftwareUpdate WHERE ComplianceState = 0" -namespace "ROOT\ccm\ClientSDK").count