# Azure Bicep Collection

This repository contains a collection of Bicep templates and Azure CLI scripts to help with various Azure administration tasks.

## Project Structure

### [assignNist80053Rev5](assignNist80053Rev5/README.MD)

This project contains a Bicep template and an Azure CLI script to assign the NIST SP 800-53 Rev. 5 initiative to a management group in Azure.

- **`deploy.azcli`**: Azure CLI script to deploy the Bicep template.
- **`main.bicep`**: Bicep template defining the policy assignment.
- **`README.MD`**: Documentation for this project.

### [az_budget_alerts](az_budget_alerts/README.MD)

This project contains a Bicep template and an Azure CLI script to create a budget to track cost or usage and get notified whenever a specified threshold is met.

- **`deploy_azure_budget_alert.azcli`**: Azure CLI script to deploy the Bicep template.
- **`main.bicep`**: Bicep template defining the budget.
- **`main.bicepparam`**: Parameters file for the Bicep template.
- **`README.MD`**: Documentation for this project.

## Additional Resources

- [Azure Bicep Documentation](https://docs.microsoft.com/azure/azure-resource-manager/bicep/)
- [Azure CLI Documentation](https://docs.microsoft.com/cli/azure/)

## Contributing

Contributions are welcome! Please read the [contributing guidelines](CONTRIBUTING.md) first.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.