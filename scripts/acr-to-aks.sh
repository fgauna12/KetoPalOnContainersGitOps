#!/bin/bash

AKS_RESOURCE_GROUP=prod2-nebbia-rg
AKS_CLUSTER_NAME=prod2-nebbia-aks
ACR_RESOURCE_GROUP=shared-nebbia-rg
ACR_NAME=nebbiaregistry

echo "Finding client ID"

# Get the id of the service principal configured for AKS
CLIENT_ID=$(az aks show --resource-group $AKS_RESOURCE_GROUP --name $AKS_CLUSTER_NAME --query "servicePrincipalProfile.clientId" --output tsv)

echo "Finding ACR ID"
# Get the ACR registry resource id
ACR_ID=$(az acr show --name $ACR_NAME --resource-group $ACR_RESOURCE_GROUP --query "id" --output tsv)

echo "Creating role assingment"
# Create role assignment
az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID