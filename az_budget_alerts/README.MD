# Create a Simple Budget

This template shows how to create a budget to track cost or usage and get notified whenever a specified threshold is met. To learn more about how to deploy the template, see the [quickstart](https://docs.microsoft.com/azure/cost-management-billing/costs/quick-create-budget-template) article.

For more information, see [Budgets - Create Or Update](https://docs.microsoft.com/rest/api/consumption/budgets/createorupdate).

## Important note about parameters

Before running the script, edit *main.bicepparam* and replace the sample data.

- **Budget Name**: Name of the budget. It should be unique within the subscription.
- **Amount**: The total amount of cost or usage to track with the budget. Any decimal value is allowed.
- **Time Grain**: The time covered by a budget. Tracking of the amount will be reset based on the time grain. Allowed values are: _Monthly_, _Quarterly_, _Annually_.
- **Start Date**: The start date must be first of the month in `YYYY-MM-DD` format and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date shouldn't be more than three months. Past start date should be selected within the **Time Grain** period.
- **End Date**: Any date after the start date in in `YYYY-MM-DD` format.
- **First Threshold**: It's the first threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It's always percent and has to be between 0.01 and 1000.
- **Second Threshold**: It's the second threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It's always percent and has to be between 0.01 and 1000.
- **Contact Emails**: The list of email addresses to send the budget notification to when the threshold is exceeded. It accepts array of strings.

## Deploy the bicep file
1. Save the [main.bicep](/az_budget_alerts/main.bicep) and [main.bicepparam](/az_budget_alerts/main.bicepparam) to your local computer.
2. Deploy the Bicep file using either Azure CLI.
    ```bash
    # Set deployment name
    myDeploymentName='myAzureBudgetAlert'-$RANDON-$(date +"%d-%b-%Y")

    # Deploy bicep and use .bicepparam to fill parameters.
    az deployment sub create \
    --name $myDeploymentName \
    --location eastus \
    --template-file main.bicep \
    --parameters main.bicepparam
    ```
You will need to make sure you have filled out the *main.biccepparam* accordingly before deploy or you could run into issues during deployment. 