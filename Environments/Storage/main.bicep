param location string = resourceGroup().location
param storageAccountName string

module myStorage 'br/public:avm/res/storage/storage-account:0.19.0' = {
  name: 'myStorageAccount'
  params: {
    name: storageAccountName
    kind: 'BlobStorage'
    location: location
    allowBlobPublicAccess: false
    skuName: 'Standard_LRS'
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Deny'
    }
  }
}
