provider "azurerm" {
    features {}
}
module "base_metadata_example" {
    source = "../.."
    // Here you'll be passing the input values into the module
    resource_group_name = "base-metadata-example"
    region = "eastus"
}