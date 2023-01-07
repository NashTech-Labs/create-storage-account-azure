#!/bin/sh

set -o errexit
# set -o xtrace  # used for debugging

echo "Create Storage Account"

echo "\nEnter Resource Group Name:"
read rg_name

echo "\nEnter Storage Account location (azure region):"
read location

echo "\nEnter Storage Account Name:"
read storage_account_name

echo "\nEnter SKU for Storage Account:"
read sku_storage_account

echo "\nCreating Storage Account"

valid_name = $(az storage account check-name \
    --name $storage_account_name
    --query nameAvailable \
    --output tsv)

if [ valid_name ]
then
    result=$(az storage account create \
        --resource-group $rg_name \
        --name $storage_account_name \
        --location $location \
        --sku $sku_storage_account)
else
    echo "\nEntered Name not available"
fi

status=$?

[ $status -eq 0 ] && echo "\nStorage account created successfully" || echo "\nError creating Storage Acoount \n$result"