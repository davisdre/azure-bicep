# Consumption Budget at Resource Group Scope

This project contains a Bicep template and an Azure CLI script to deploy a consumption budget at the resource group scope in Azure.

## Project Structure

- **`deploy_consumptionBudgetRG.azcli`**: Azure CLI script to deploy the Bicep template.
- **`main.bicep`**: Bicep template defining the resource group budget module deployment.
- **`README.MD`**: This file.

## Bicep Template

The Bicep template (`main.bicep`) deploys the Azure Verified Module for a resource group-scoped consumption budget. It includes the following key parameters in the module:

- **`amount`**: Budget amount. Current value is `2`.
- **`name`**: Budget resource name. Current value is `'myRgBudget'`.
- **`contactEmails`**: Notification email addresses. Current value includes `'dummy@contoso.com'`.

The template uses module `br/public:avm/res/consumption/budget/rg-scope:0.1.0`.

## Azure CLI Script

The Azure CLI script (`deploy_consumptionBudgetRG.azcli`) deploys the Bicep template to a specified resource group. It uses the `az deployment group create` command with the following parameters:

- **`--name`**: Name of the deployment.
- **`--resource-group`**: Name of the target resource group.
- **`--template-file`**: Path to the Bicep template file.

## Deployment Instructions

1. Navigate to the `consumptionBudgetRG` directory.
2. Open the `deploy_consumptionBudgetRG.azcli` file and replace `myResourceGroup` with your resource group name.
3. Update budget values in `main.bicep` as needed (for example, `amount`, `name`, and `contactEmails`).
4. Run the Azure CLI script to deploy the Bicep template:

    ```bash
    az deployment group create \
    --name avmConsumptionBudgetRG-$(date +"%d-%b-%Y") \
    --resource-group myResourceGroup \
    --template-file main.bicep
    ```

## Output

The deployment will create or update a resource group-scoped consumption budget.

## Additional Resources

- [bicep-registry-modules/avm/res/consumption/budget/rg-scope at main · Azure/bicep-registry-modules](https://github.com/Azure/bicep-registry-modules/tree/main/avm/res/consumption/budget/rg-scope)
- [Bicep Resource Modules | AVM](https://azure.github.io/Azure-Verified-Modules/indexes/bicep/bicep-resource-modules/)
