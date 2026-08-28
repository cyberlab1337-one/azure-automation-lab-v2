using '../deploy.bicep'

param resourceGroupName = 'lab02-rg-weu'
param location = 'westeurope'

param virtualNetworkName = 'lab02-vnet-weu'
param vnetAddressSpace = '10.0.0.0/16'

param subnetName = 'lab02-snet-weu'
param subnetPrefix = '10.0.1.0/24' 

param bastionSubnetName = 'AzureBastionSubnet'
param bastionSubnetAddressPrefix = '10.0.2.0/26' 

param bastionHostName = 'bastion-test-weu'
param bastionPublicIpName = 'lab02-pip-bastion-weu' 

param networkSecurityGroupName = 'lab02-nsg-weu'

param vmName = 'lab02-linux-b2sv2-weu'
param adminUsername = 'azureadmin'
param vmSize = 'Standard_B2s_v2'

param networkInterfaceName = 'lab02-nic-weu'

param identityName = 'id-lab02-dev-weu'
param keyVaultName = 'keyvault-lab02-dev-weu'

