Note: The result may contain false positive predictions (noise).
You can help us improve the accuracy of the result by opening an issue here: https://aka.ms/WhatIfIssues

Resource and property changes are indicated with these symbols:
  + Create
  x Unsupported

The deployment will update the following scopes:

Scope: /



Scope: /subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914

  + resourceGroups/lab02-rg-weu [2025-04-01]

      apiVersion: "2025-04-01"
      id:         "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu"
      location:   "westeurope"
      name:       "lab02-rg-weu"
      type:       "Microsoft.Resources/resourceGroups"

Scope: /subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu

  + Microsoft.Compute/virtualMachines/lab02-linux-b2sv2-weu [2024-11-01]

      apiVersion:                                                                                                                                                                                  "2024-11-01"
      id:                                                                                                                                                                                          "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Compute/virtualMachines/lab02-linux-b2sv2-weu"
      identity.type:                                                                                                                                                                               "UserAssigned"
      identity.userAssignedIdentities./subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id-lab02-dev-weu: {}
      location:                                                                                                                                                                                    "westeurope"
      name:                                                                                                                                                                                        "lab02-linux-b2sv2-weu"
      properties.hardwareProfile.vmSize:                                                                                                                                                           "Standard_B2s_v2"
      properties.networkProfile.networkInterfaces: [
        0:

          id: "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/networkInterfaces/lab02-nic-weu"

      ]
      properties.osProfile.adminUsername:                                                                                                                                                          "azureadmin"
      properties.osProfile.computerName:                                                                                                                                                           "lab02-linux-b2sv2-weu"
      properties.osProfile.customData:                                                                                                                                                             "*******"
      properties.osProfile.linuxConfiguration.disablePasswordAuthentication:                                                                                                                       true
      properties.osProfile.linuxConfiguration.ssh.publicKeys: [
        0:

          keyData: "*******"
          path:    "*******"

      ]
      properties.storageProfile.imageReference.offer:                                                                                                                                              "0001-com-ubuntu-server-jammy"
      properties.storageProfile.imageReference.publisher:                                                                                                                                          "Canonical"
      properties.storageProfile.imageReference.sku:                                                                                                                                                "22_04-lts-gen2"
      properties.storageProfile.imageReference.version:                                                                                                                                            "latest"
      properties.storageProfile.osDisk.createOption:                                                                                                                                               "FromImage"
      type:                                                                                                                                                                                        "Microsoft.Compute/virtualMachines"

  + Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu [2025-05-01]

      apiVersion:                         "2025-05-01"
      id:                                 "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu"
      location:                           "westeurope"
      name:                               "keyvault-lab02-dev-weu"
      properties.enableRbacAuthorization: true
      properties.sku.family:              "A"
      properties.sku.name:                "standard"
      properties.tenantId:                "6a193650-e20f-4bba-bcfc-db9c1507d675"
      type:                               "Microsoft.KeyVault/vaults"

  + Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu/providers/Microsoft.Insights/diagnosticSettings/keyvault-diagnostics [2021-05-01-preview]

      apiVersion:             "2021-05-01-preview"
      id:                     "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu/providers/Microsoft.Insights/diagnosticSettings/keyvault-diagnostics"
      name:                   "keyvault-diagnostics"
      properties.logs: [
        0:

          category: "AuditEvent"
          enabled:  true

      ]
      properties.workspaceId: "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.OperationalInsights/workspaces/lab02-law-weu"
      type:                   "Microsoft.Insights/diagnosticSettings"

  + Microsoft.ManagedIdentity/userAssignedIdentities/id-lab02-dev-weu [2023-01-31]

      apiVersion: "2023-01-31"
      id:         "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id-lab02-dev-weu"
      location:   "westeurope"
      name:       "id-lab02-dev-weu"
      type:       "Microsoft.ManagedIdentity/userAssignedIdentities"

  + Microsoft.Network/bastionHosts/bastion-test-weu [2022-07-01]

      apiVersion:                     "2022-07-01"
      id:                             "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/bastionHosts/bastion-test-weu"
      location:                       "westeurope"
      name:                           "bastion-test-weu"
      properties.disableCopyPaste:    false
      properties.enableFileCopy:      false
      properties.enableIpConnect:     false
      properties.enableShareableLink: false
      properties.enableTunneling:     false
      properties.ipConfigurations: [
        0:

          name:                          "ip-configuration"
          properties.publicIPAddress.id: "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/publicIPAddresses/lab02-pip-bastion-weu"
          properties.subnet.id:          "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/AzureBastionSubnet"

      ]
      properties.scaleUnits:          2
      sku.name:                       "Basic"
      type:                           "Microsoft.Network/bastionHosts"

  + Microsoft.Network/networkInterfaces/lab02-nic-weu [2022-07-01]

      apiVersion:                             "2022-07-01"
      id:                                     "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/networkInterfaces/lab02-nic-weu"
      location:                               "westeurope"
      name:                                   "lab02-nic-weu"
      properties.enableAcceleratedNetworking: false
      properties.enableIPForwarding:          false
      properties.ipConfigurations: [
        0:

          name:                                 "testconfiguration1"
          properties.privateIPAddressVersion:   "IPv4"
          properties.privateIPAllocationMethod: "Dynamic"
          properties.subnet.id:                 "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/lab02-snet-weu"

      ]
      type:                                   "Microsoft.Network/networkInterfaces"

  + Microsoft.Network/networkSecurityGroups/lab02-nsg-weu [2024-05-01]

      apiVersion:  "2024-05-01"
      id:          "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/networkSecurityGroups/lab02-nsg-weu"
      location:    "westeurope"
      name:        "lab02-nsg-weu"
      properties.securityRules: [
        0:

          name:                                "Allow-SSH-From-Bastion"
          properties.access:                   "Allow"
          properties.destinationAddressPrefix: "*"
          properties.destinationPortRange:     "22"
          properties.direction:                "Inbound"
          properties.priority:                 100
          properties.protocol:                 "Tcp"
          properties.sourceAddressPrefix:      "10.0.2.0/26"
          properties.sourcePortRange:          "*"

      ]
      type:        "Microsoft.Network/networkSecurityGroups"

  + Microsoft.Network/publicIPAddresses/lab02-pip-bastion-weu [2022-07-01]

      apiVersion:                             "2022-07-01"
      id:                                     "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/publicIPAddresses/lab02-pip-bastion-weu"
      location:                               "westeurope"
      name:                                   "lab02-pip-bastion-weu"
      properties.ddosSettings.protectionMode: "VirtualNetworkInherited"
      properties.idleTimeoutInMinutes:        4
      properties.publicIPAddressVersion:      "IPv4"
      properties.publicIPAllocationMethod:    "Static"
      sku.name:                               "Standard"
      sku.tier:                               "Regional"
      type:                                   "Microsoft.Network/publicIPAddresses"

  + Microsoft.Network/virtualNetworks/lab02-vnet-weu [2025-01-01]

      apiVersion:               "2025-01-01"
      id:                       "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/virtualNetworks/lab02-vnet-weu"
      location:                 "westeurope"
      name:                     "lab02-vnet-weu"
      properties.addressSpace.addressPrefixes: [
        0: "10.0.0.0/16"
      ]
      properties.subnets: [
        0:

          name:                     "AzureBastionSubnet"
          properties.addressPrefix: "10.0.2.0/26"

        1:

          name:                               "lab02-snet-weu"
          properties.addressPrefix:           "10.0.1.0/24"
          properties.networkSecurityGroup.id: "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/networkSecurityGroups/lab02-nsg-weu"

      ]
      type:                     "Microsoft.Network/virtualNetworks"

  + Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/AzureBastionSubnet [2025-01-01]

      apiVersion:               "2025-01-01"
      id:                       "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/AzureBastionSubnet"
      name:                     "AzureBastionSubnet"
      properties.addressPrefix: "10.0.2.0/26"
      type:                     "Microsoft.Network/virtualNetworks/subnets"

  + Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/lab02-snet-weu [2025-01-01]

      apiVersion:                         "2025-01-01"
      id:                                 "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/virtualNetworks/lab02-vnet-weu/subnets/lab02-snet-weu"
      name:                               "lab02-snet-weu"
      properties.addressPrefix:           "10.0.1.0/24"
      properties.networkSecurityGroup.id: "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.Network/networkSecurityGroups/lab02-nsg-weu"
      type:                               "Microsoft.Network/virtualNetworks/subnets"

  + Microsoft.OperationalInsights/workspaces/lab02-law-weu [2023-09-01]

      apiVersion:                 "2023-09-01"
      id:                         "/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.OperationalInsights/workspaces/lab02-law-weu"
      location:                   "westeurope"
      name:                       "lab02-law-weu"
      properties.retentionInDays: 30
      type:                       "Microsoft.OperationalInsights/workspaces"

Resource changes: 13 to create, 1 unsupported.

Diagnostics (1): 
[extensionResourceId('/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu', 'Microsoft.Authorization/roleAssignments', guid('/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.KeyVault/vaults/keyvault-lab02-dev-weu', reference('/subscriptions/0336ca63-cf5a-41f8-9341-efdd1e102914/resourceGroups/lab02-rg-weu/providers/Microsoft.ManagedIdentity/userAssignedIdentities/id-lab02-dev-weu', '2023-01-31').principalId, 'KeyVaultSecretsUser'))] (Unsupported) Changes to the resource declared at 'properties.template.resources[6].properties.template.resources[0]' on line 1 and column 15809 cannot be analyzed because its resource ID or API version cannot be calculated until the deployment is under way. Please see https://aka.ms/WhatIfUnidentifiableResource for more guidance.

