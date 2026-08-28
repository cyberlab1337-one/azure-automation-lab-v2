targetScope = 'resourceGroup'

param location string
param identityName string

resource appIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: identityName
  location: location
}

output identityId string = appIdentity.id
output identityPrincipalId string = appIdentity.properties.principalId
