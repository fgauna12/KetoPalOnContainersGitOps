#!/bin/bash

echo "updating dns on azure"

# Public IP address of your ingress controller
IP=$1

echo "IP is $IP"

# Name to associate with public IP address
DNSNAME="prod-codecampster"

echo "Finding the id of the public ip"

# Get the resource-id of the public ip
PUBLICIPID=$(az network public-ip list --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv)

echo "Public IP id is $PUBLICIPID"

echo "Updating the public ip with the dnsname $DNSNAME"

# Update public ip address with DNS name
az network public-ip update --ids $PUBLICIPID --dns-name $DNSNAME
