Login-AzureRmAccount
Select-AzureRmSubscription -SubscriptionId '4c12fb1b-cfd8-4a33-8df0-93243bc7e3fa'
New-AzureRmResourceGroup -Name 'AzureKeyVaultDemo' -Location 'East Asia' -Force
New-AzureRmResourceGroupDeployment -ResourceGroupName 'AzureKeyVaultDemo' -TemplateFile .\azuredeploy.json -TemplateParameterFile .\azuredeploy.parameters.json -Force -Verbose
