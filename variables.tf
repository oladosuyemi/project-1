# Azure Variables

variable "name" {
  type        = list(string)
  description = "Name of the users"
  default = ["Adeyemi", "Ibrahim"]
}

variable "Adeyemi_password" {
  type        = string
  description = "Password for Adeyemi user"
  default = "Adeyemi123*"
}

variable "Ibrahim_password" {
  type        = string
  description = "Password for Ibrahim user"
  default= "Ibrahim123*"
}

variable "users" {
    type = list(string)
  default = ["Ryan", "Huang", "Jarret", "Yicao"]
}

variable "names_bucket" {
  type    = list(string)
  default = ["s3-bucket-1", "s3-bucket-2"]
}


variable "vm_size" {
  type    = string
  default = "Dsv3"
}

variable "storage_account_name" {
  type    = string
  default = "project_storage"
}
