targetScope = 'resourceGroup'

param location string

param virtualNetworkName string
param vnetAddressSpace string

param subnetName string
param subnetPrefix string 

param bastionSubnetName string
param bastionSubnetAddressPrefix string

param networkSecurityGroupName string

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2025-01-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressSpace
      ]
    }
  }
}

resource appSubnet 'Microsoft.Network/virtualNetworks/subnets@2025-01-01' = {
  parent: virtualNetwork
  name: subnetName
  properties: {
    addressPrefix: subnetPrefix
    networkSecurityGroup: {
      id: networkSecurityGroup.id
    }
  }
}

resource bastionSubnet 'Microsoft.Network/virtualNetworks/subnets@2025-01-01' = {
  parent: virtualNetwork
  name: bastionSubnetName
  properties: {
    addressPrefix: bastionSubnetAddressPrefix
  }
  dependsOn: [
    appSubnet
  ]
}

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2024-05-01' = {
  name: networkSecurityGroupName
  location: location

  properties: {
    securityRules: [
      {
        name: 'Allow-SSH-From-Bastion'

        properties: {
          priority: 100
          direction: 'Inbound'
          access: 'Allow'
          protocol: 'Tcp'

          sourcePortRange: '*'
          destinationPortRange: '22'

          sourceAddressPrefix: bastionSubnetAddressPrefix
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}

output subnetId string = appSubnet.id
output bastionSubnetId string = bastionSubnet.id
output networkSecurityGroupId string = networkSecurityGroup.id
