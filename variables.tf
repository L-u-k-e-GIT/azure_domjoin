variable "MD_RUN" { 
 description = "Virtual Machine Id"
 type = number
 default = "0"
}




variable "MD_VIRTUAL_MACHINE_ID" { 
 description = "Virtual Machine Id"
 type = string
 default = ""
}




variable "MD_USERNAME" { 
 description = "UserName for AD Join"
 type = string
 default = ""
 sensitive   = true
}

variable "MD_USERPWD" { 
 description = "Password for AD Join"
 type = string
 default = ""
 sensitive   = true
}

variable "MD_PROJECT_NAME" { 
 description = "NOme Progetto"
 type = string
 default = ""
 
}

variable "MD_DOMAIN_LDAP" { 
 description = "Percorso LDAP"
 type = string
 default = ""
 
}

variable "MD_DOMAIN_NAME" { 
 description = "Name of the Domain you wish to join"
 type = string
 default = ""
 }

variable "MD_ALL_TAGS" { 

 default = ""
 }

