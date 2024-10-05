variable "natgateway" {
  type        = map(string)
  description = ""
  default = {
    Name = "Natgateway"
  }
}

variable "eip_tags" {
  type        = map(string)
  description = ""
  default = {
    "name" = "EIP-NATGateway-us-east-1b"
  }
}

  variable "natcidrblock" {
    type = string
    description = ""
    default = "0.0.0.0/0"
    }
  