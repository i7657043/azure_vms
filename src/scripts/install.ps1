param (
   [parameter(mandatory=$true )] $baseDirectory
)

echo "Installing Az.Compute ...";
Install-Module -Name Az.Compute -AllowClobber 
echo "Success";

If(!(test-path -PathType container $baseDirectory))
{	
	echo "Creating dir: $baseDirectory ...";
    New-Item -ItemType Directory -Path $baseDirectory
	echo "Success";
}