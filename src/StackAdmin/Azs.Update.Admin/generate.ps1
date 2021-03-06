
$rpName = "update"
$name = "Update"
$location = Get-Location
$psswagger = "E:\src\PSswagger"
$module = "Module"
$namespace = "Microsoft.AzureStack.Management.$name.Admin"
$assembly = "$namespace.dll"
$client = "$namespace.$($name)AdminClient"

Write-Host $assembly

. ..\..\..\tools\GeneratePSSwagger.ps1 `
    -RPName $rpName `
    -Location $location `
    -Admin `
    -ModuleDirectory $module `
    -AzureStack `
    -PSSwaggerLocation $psswagger `
    -GithubAccount deathly809 `
    -GithubBranch azs.$rpName.admin `
    -PredefinedAssemblies $assembly `
    -Name $name `
    -ClientTypeName $client `
    -GenerateSwagger:$true
