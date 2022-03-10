# Integrating with LabelHub

## File-based integration via AWS S3
Syncronization of files between LabelHub S3 and the local server can be setup in multiple ways. Options include direct communication with S3, [AWS CLI](https://aws.amazon.com/cli/) or using a 3rd party tool like [WinSCP](https://winscp.net/eng/index.php). LabelHub has experience with different kind of integrations(primarily direct integration from AutomationEngine and WinSCP), so let us know what requirements you have and we will help you with your integration.

### PowerShell syncronization
In this repository you will find an example on a simple integration using PowerShell. The integration is very simple and does not require running third party software(except for AWS Cmdlets). The code can easily be modified to suit your local needs.


