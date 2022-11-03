param (
   [parameter(mandatory=$true )] $vm_id,
   [parameter(mandatory=$true )] $filePath   
)

az deployment group create `
--resource-group glastonbury `
--template-file "template.json" `
--parameters virtualMachines_glasto_vm_username=xxx `
--parameters virtualMachines_glasto_vm_password=xxx `
--parameters virtualMachines_glasto_vm_name=glasto-vm-$vm_id `
--parameters networkInterfaces_glasto_vm_name=glasto-vm-$vm_id-nic `
--parameters publicIPAddresses_glasto_vm_name=glasto-vm-$vm_id-ip `
--parameters virtualNetworks_glastonbury_vnet_name=glasto-vm-$vm_id-vnet `
--parameters networkSecurityGroups_glasto_vm_name=glasto-vm-$vm_id-nsg `
--verbose
  
Get-AzRemoteDesktopFile -ResourceGroupName glastonbury `
-Name glasto-vm-$vm_id `
-LocalPath $filePath
