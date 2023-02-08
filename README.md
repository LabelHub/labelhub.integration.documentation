# Integrating with LabelHub

## File-based integration via AWS S3
Syncronization of files between LabelHub S3 and the local server can be setup in multiple ways. The recommended way of doing this is using our [LabelHub Transfer App](https://github.com/LabelHub/labelhub.integration.documentation/wiki/LabelHub-Transfer-App). Other options include direct communication with S3, [AWS CLI](https://aws.amazon.com/cli/) or using a 3rd party tool like [WinSCP](https://winscp.net/eng/index.php). LabelHub has experience with different kind of integrations(primarily direct integration from AutomationEngine and WinSCP), so let us know what requirements you have and we will help you with your integration.

### LabelHub Transfer App (recommended)
Using our [LabelHub Transfer App](https://github.com/LabelHub/labelhub.integration.documentation/wiki/LabelHub-Transfer-App) is our recommended way of sending data to and from LabelHub.

### PowerShell syncronization
In this repository you will find an example on a simple integration using PowerShell. The integration is very simple and does not require running third party software(except for AWS Cmdlets). The code can easily be modified to suit your local needs.

### WinSCP syncronization
Located inside the winscp folder is an example of an automation-script for WinSCP. The only files that needs modifications are `labelhub-sync.bat` where credentials and bucketname are required. Any local folders can easily be overwritten if desired. It is recommended to download WinSCP from the [official source](https://winscp.net/eng/download.php), but the nessesary binaries are also included in this repository if needed.

## Data model
LabelHub have a default set of datamodels which are described in the [wiki](https://github.com/LabelHub/labelhub.integration.documentation/wiki) and it is recommended to use these models.

If using a custom set of datamodels is not an option, let us know and we'll be able to make something custom for your particular integration!
