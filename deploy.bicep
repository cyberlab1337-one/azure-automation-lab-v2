targetScope = 'subscription'

param resourceGroupName string
param location string

param virtualNetworkName string
param vnetAddressSpace string
param subnetName string
param subnetPrefix string 
param bastionSubnetName string

param bastionHostName string
param bastionSubnetAddressPrefix string
param bastionPublicIpName string

param networkSecurityGroupName string
param networkInterfaceName string

param vmName string
param vmSize string
param adminUsername string

param identityName string
param keyVaultName string

param logAnalyticsName string

resource rg 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: resourceGroupName
  location: location
}

module network './modules/network.bicep' = {
  name: 'network-deployment'
  scope: rg
  params: {
    location: location
    virtualNetworkName: virtualNetworkName
    vnetAddressSpace: vnetAddressSpace
    subnetName: subnetName
    subnetPrefix: subnetPrefix
    bastionSubnetName: bastionSubnetName
    bastionSubnetAddressPrefix: bastionSubnetAddressPrefix
    networkSecurityGroupName: networkSecurityGroupName
  }
}

module bastion './modules/bastion.bicep' = {
  name: 'bastion-deployment'
  scope: rg
  params: {
    location: location
    bastionHostName: bastionHostName
    bastionPublicIpName: bastionPublicIpName
    bastionSubnetId: network.outputs.bastionSubnetId
  }
}

module vm './modules/vm.bicep' = {
  name: 'vm-deployment'
  scope: rg
  params: {
    location: location
    vmName: vmName
    vmSize: vmSize
    identityId: identity.outputs.identityId
    adminUsername: adminUsername
    networkInterfaceName: networkInterfaceName
    subnetId: network.outputs.subnetId
  }
}

module identity './modules/identity.bicep' = {
  name: 'identity-deployment'
  scope: rg
  params: {
    location: location
    identityName: identityName
  }
}

module keyVault './modules/keyvault.bicep' = {
  name: 'keyvault-deployment'
  scope: rg
  params: {
    keyVaultName: keyVaultName
    location: location
  }
}

module rbac './modules/rbac.bicep' = {
  name: 'rbac-deployment'
  scope: rg
  params: {
    keyVaultName: keyVault.outputs.keyVaultName
    identityPrincipalId: identity.outputs.identityPrincipalId
  }
}

module monitoring './modules/monitoring.bicep' = {
  name: 'monitoring-deployment'
  scope: rg
  params: {
    location: location
    logAnalyticsName: logAnalyticsName
    keyVaultName: keyVault.outputs.keyVaultName
  }
}
