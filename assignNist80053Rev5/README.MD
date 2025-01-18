# Assign NIST 800-53 Rev. 5 Initiative

This project contains a Bicep template and an Azure CLI script to assign the NIST SP 800-53 Rev. 5 initiative to a management group in Azure.

## Project Structure

- **`deploy.azcli`**: Azure CLI script to deploy the Bicep template.
- **`main.bicep`**: Bicep template defining the policy assignment.
- **`README.MD`**: This file.

## Bicep Template

The Bicep template (`main.bicep`) creates a policy assignment at the management group scope. It includes the following parameters:

- **`initiativeDisplayName`**: The display name of the initiative/policy assignment. Default is `'assign-nist-800-53-v-5'`.
- **`policyDefinitionId`**: The policy definition ID of the built-in initiative definition for NIST SP 800-53 Rev. 5.

The template defines a resource of type `Microsoft.Authorization/policyAssignments@2024-04-01` with a system-assigned managed identity.

## Azure CLI Script

The Azure CLI script (`deploy.azcli`) deploys the Bicep template to a specified management group. It uses the `az deployment mg create` command with the following parameters:

- **`--name`**: Name of the deployment.
- **`--location`**: Location for the deployment.
- **`--management-group-id`**: ID of the management group.
- **`--template-file`**: Path to the Bicep template file.

## Deployment Instructions

1. Navigate to the `assignNist80053Rev5` directory.
2. Open the `deploy.azcli` file and replace `<mg-id>` with your management group ID.
3. Run the Azure CLI script to deploy the Bicep template:

    ```bash
    az deployment mg create \
    --name nist80053Rev5Deployment \
    --location eastus \
    --management-group-id <mg-id> \
    --template-file main.bicep
    ```

## Output

The deployment will output the ID of the created policy assignment.

## Additional Resources

- [Azure Policy](https://docs.microsoft.com/azure/governance/policy/overview)
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)