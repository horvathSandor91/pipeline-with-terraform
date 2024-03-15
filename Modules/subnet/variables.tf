
variable "rg_location" {
    type = string
    description = "The location for the deployment"
}

variable "rg_name" {
  type = string
  description = "name of the rg"
}
variable "address_space" {}
variable "dns_servers" {}

variable "subnets" {
    type = map(any)
}

