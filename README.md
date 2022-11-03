## Scripts for easily creating Azure VMs with RDP setup

### Example usage
`.\run.ps1 3`

#### Parameters
1. vm-id (integer: unique id of vm)

#### Notes
The run.ps1 script within this repo will create a directory to save .rdp files to at:
`C:\Users\<username>\Downloads\glasto_vms`

.rdp Files downloaded after provisioning the new VM will be in the following format: `<vm-name>.rdp` and saved in the above directory
