# Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "Project-resource-group"
  location = "West US"

  tags = {
    environment = "test"
  }
}


resource "azurerm_ad_user" "Adeyemi" {
  display_name = "Adeyemi"
  user_principal_name = "Adeyemi@${var.name}fdmgroup.com"
  password = var.Adeyemi_password
}

resource "azurerm_ad_user" "Ibrahim" {
  display_name = "Ibrahim"
  user_principal_name = "Ibrahim@${var.name}.fdmgroup.com"
  password = var.Ibrahim_password
  force_password_change_on_login = true
}



# Create AWS IAM users
resource "aws_iam_user" "new_users" {
  for_each = toset(var.users)

  name = each.value

}

#Create S3 bucket


resource "aws_s3_bucket" "project_bucket" {
  count = length(var.names_bucket)

  bucket = var.bucket_names[count.index]
  
 
}

#create storage account

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


#create VM

resource "azurerm_virtual_machine" "example" {
  name                  = "example-vm"
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "example-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "example-vm"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}





