##Tag RT Privado-us-east-1a
variable "rt_private_us_east_1a_tag" {
  type        = map(string)
  description = ""
  default = {
    "Name" = "RT-Privado-us-east-1a" 
  }
}

##Tag RT Public-us-east-1a
variable "rt_public_us_east_1a_tag" {
  type        = map(string)
  description = ""
  default = {
    "Name" = "RT-Public-us-east-1a"
  }
}


variable "destination_cidr_block" {
  type        = string
  description = "The CIDR block for the destination route (e.g., '0.0.0.0/0' for all traffic)"
  default     = "0.0.0.0/0"  # Rota padrão para toda a Internet
}
