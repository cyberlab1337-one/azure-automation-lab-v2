targetScope = 'resourceGroup'

param keyVaultName string
param location string

resource keyVault 'Microsoft.KeyVault/vaults@2025-05-01' = {
  name: keyVaultName
  location: location
  

  properties: {
    tenantId: tenant().tenantId
    enableRbacAuthorization: true

    sku: {
      name: 'standard'
      family: 'A'
    }
  }
}

output keyVaultName string = keyVault.name
