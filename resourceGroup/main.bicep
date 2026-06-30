targetScope = 'subscription'

module resourceGroup 'br/public:avm/res/resources/resource-group:0.4.3' = {
  params: {
    // Required parameters
    name: 'my-avm-rg'
    // Non-required parameters
    tags: {
      Environment: 'Non-Prod'
      'hidden-title': 'This is visible in the resource name'
      Role: 'DeploymentValidation'
    }
  }
}
