
resource "azurerm_virtual_machine_extension" "domjoin" {
count = var.MD_RUN
name = "domjoin"
virtual_machine_id = var.MD_VIRTUAL_MACHINE_ID
publisher = "Microsoft.Compute"
type = "JsonADDomainExtension"
type_handler_version = "1.3"
tags = var.MD_ALL_TAGS 
settings = <<SETTINGS
    {
    "Name": "${var.MD_DOMAIN_NAME}",
    "User": "${var.MD_USERNAME}",
    "OUPath": "OU=${var.MD_PROJECT_NAME},${var.MD_DOMAIN_LDAP}",
    "Restart": "true",
    "Options": "3"
      
    }
SETTINGS
  protected_settings   = <<PROTECTED_SETTINGS
    {
            "Password": "${var.MD_USERPWD}"
    }
PROTECTED_SETTINGS

lifecycle {
    ignore_changes = [
     tags,
     protected_settings
     ]
  }
}


