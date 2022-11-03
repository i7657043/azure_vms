param (
   [parameter(mandatory=$true )] $vm_limit
) 

$baseDirectory = "$((New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path)\glasto_vms"

scripts\install.ps1 $baseDirectory 

for ($i = 0; $i -lt $vm_limit; $i++)
{
	$vm_id = ($i + 1);
	$filePath = "$baseDirectory\glasto-vm-$vm_id.rdp";
	
	echo "Provisioning vm-$vm_id ...";
	scripts\create.ps1 $vm_id $filePath
	echo "Success - downloaded RDP file to path: $filePath";
}