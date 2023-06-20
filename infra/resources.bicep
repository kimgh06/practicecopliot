resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: 'myAppServicePlan'
  location: 'westus2'
  kind: 'app'
  sku: {
    name: 'B1'
    tier: 'Basic'
    size: 'B1'
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: 'myWebApp'
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
  }
}
