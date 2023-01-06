# What is a Azure storage account?

- An Azure storage account contains all of your Azure Storage data objects, including blobs, file shares, queues, tables, and disks. 
- The storage account provides a unique namespace for your Azure Storage data that's accessible from anywhere in the world over HTTP or HTTPS. 
- Data in your storage account is durable and highly available, secure, and massively scalable.
- Each resource in Azure must belong to a resource group.
- There can be multiple resource group in a single subscription

You can get the more information [here](https://learn.microsoft.com/en-us/azure/storage/common/storage-introduction)

## Rules for Storage Account Name

When naming your storage account, keep these rules in mind:

Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.
Your storage account name must be unique within Azure. No two storage accounts can have the same name.

# What is Azure CLI?

- The Azure Command-Line Interface (CLI) is a cross-platform command-line tool to connect to Azure and execute administrative commands on Azure resources. 
- It allows the execution of commands through a terminal using interactive command-line prompts or a script.

You can get the more information [here](https://learn.microsoft.com/en-us/cli/azure/)

# Pre-requsties

- Setup Azure CLI, check for the installation of Azure CLI [here](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

# How to run the script

- Run the script using command `./create-storage-account.sh`
- Enter the resource group name, location for Azure storage account, storage account name and SKU for storage account (For SKU type account information [click here](https://learn.microsoft.com/en-us/rest/api/storagerp/srp_sku_types)) when asked
