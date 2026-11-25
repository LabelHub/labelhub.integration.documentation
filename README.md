# Integrating with LabelHub

## File-based integration via AWS S3
Synchronization of files between LabelHub S3 and the local server can be set up in multiple ways. The recommended way of doing this is using our [LabelHub Transfer App](https://github.com/LabelHub/labelhub.integration.documentation/wiki/LabelHub-Transfer-App). The second option is direct communication with S3 via [AWS CLI](https://aws.amazon.com/cli/). LabelHub has experience with different kinds of integrations, so let us know what requirements you have, and we will help you with your integration.

### LabelHub Transfer App (recommended)
Using our [LabelHub Transfer App](https://github.com/LabelHub/labelhub.integration.documentation/wiki/LabelHub-Transfer-App) is our recommended way of sending data to and from LabelHub.

## Data model
LabelHub has a default set of datamodels which are described in the [wiki](https://github.com/LabelHub/labelhub.integration.documentation/wiki), and it is recommended to use these models.

If using a custom set of datamodels is not an option, let us know, and we'll be able to make something custom for your particular integration!
