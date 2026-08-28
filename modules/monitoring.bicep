targetScope = 'resourceGroup'

param location string
param logAnalyticsName string
param keyVaultName string

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: logAnalyticsName
  location: location

  properties: {
    retentionInDays: 30
  }
}

resource keyVault 'Microsoft.KeyVault/vaults@2025-05-01' existing = {
  name: keyVaultName
}

resource keyVaultDiagnostics 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'keyvault-diagnostics'
  scope: keyVault

  properties: {
    workspaceId: logAnalytics.id

    logs: [
      {
        category: 'AuditEvent'
        enabled: true
      }
    ]
  }
}
