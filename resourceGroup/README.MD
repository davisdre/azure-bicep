# Resource Group Deployment at Subscription Scope

This project contains a Bicep template and an Azure CLI script to deploy a resource group at the subscription scope in Azure.

## Project Structure

- **`deploy_resourceGroup.azcli`**: Azure CLI script to deploy the Bicep template.
- **`main.bicep`**: Bicep template defining the resource group module deployment.
- **`README.MD`**: This file.

## Bicep Template

The Bicep template (`main.bicep`) deploys the Azure Verified Module for a resource group. It includes the following key settings in the module:

- **`targetScope`**: Deployment scope. Current value is `'subscription'`.
- **`name`**: Resource group name. Current value is `'my-avm-rg'`.
- **`tags`**: Resource group tags. Current values include `Environment`, `hidden-title`, and `Role`.

The template uses module `br/public:avm/res/resources/resource-group:0.4.3`.

## Azure CLI Script

The Azure CLI script (`deploy_resourceGroup.azcli`) deploys the Bicep template at the subscription scope. It uses the `az deployment sub create` command with the following parameters:

- **`--name`**: Name of the deployment.
- **`--location`**: Azure location for deployment metadata.
- **`--template-file`**: Path to the Bicep template file.

## Deployment Instructions

1. Navigate to the `resourceGroup` directory.
2. Open the `deploy_resourceGroup.azcli` file and update values as needed (for example, deployment location).
3. Update resource group values in `main.bicep` as needed (for example, `name` and `tags`).
4. Run the Azure CLI script to deploy the Bicep template:

    ```bash
    az deployment sub create \
    --name avmResourceGroup-$(date +"%d-%b-%Y") \
    --location eastus \
    --template-file main.bicep
    ```

## Output

The deployment will create a resource group.

## Additional Resources

- [bicep-registry-modules/avm/res/resources/resource-group at main · Azure/bicep-registry-modules](https://github.com/Azure/bicep-registry-modules/tree/main/avm/res/resources/resource-group)
