#!/bin/bash

set -e

RESOURCE_GROUP="lab02-rg-weu"
VM_NAME="lab02-linux-b2sv2-weu"
KEYVAULT_NAME="keyvault-lab02-dev-weu"
LAW_NAME="lab02-law-weu"

echo "Starting post-deployment verification..."

echo "Checking resource group..."

if az group show \
  --name "$RESOURCE_GROUP" \
  --output none 2>/dev/null; then
  echo "Resource group exists."
else
  echo "Resource group verification failed."
  exit 1
fi

echo "Checking VM..."

if az vm show \
  --resource-group "$RESOURCE_GROUP" \
  --name "$VM_NAME" \
  --output none 2>/dev/null; then
  echo "VM exists."
else
  echo "VM verification failed."
  exit 1
fi

echo "Checking VM power state..."

VM_STATE=$(az vm get-instance-view \
  --resource-group "$RESOURCE_GROUP" \
  --name "$VM_NAME" \
  --query "instanceView.statuses[?starts_with(code, 'PowerState/')].displayStatus" \
  --output tsv)

echo "VM state: $VM_STATE"

if [ "$VM_STATE" = "VM running" ]; then
  echo "VM is running."
else
  echo "VM is not running."
  exit 1
fi

echo "Checking Key Vault..."

if az keyvault show \
  --resource-group "$RESOURCE_GROUP" \
  --name "$KEYVAULT_NAME" \
  --output none 2>/dev/null; then
  echo "Key Vault exists."
else
  echo "Key Vault verification failed."
  exit 1
fi

echo "Checking Log Analytics Workspace..."
if az monitor log-analytics workspace show \
  --resource-group "$RESOURCE_GROUP" \
  --workspace-name "$LAW_NAME" \
  --output none 2>/dev/null; then
  echo "Log Analytics Workspace exists."
else
  echo "Log Analytics Workspace verification failed."
  exit 1
fi

echo "All post-deployment checks passed."