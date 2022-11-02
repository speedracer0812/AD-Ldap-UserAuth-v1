$secpasswd = ConvertTo-SecureString "AutomationRocks" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("peter.x.seo@outlook.com", $secpasswd)
$tenantId = "1543b6ae-664e-47b4-a455-b9294ee982ed"
. .\Cleanup.ps1 -Credential $mycreds -TenantId $tenantId
. .\Configure.ps1 -Credential $mycreds -TenantId $tenantId
