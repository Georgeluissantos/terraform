#Subnet Private 1a
variable "private_cidr_block_us_east_1a" { 
  type        = string
  description = "CIDR block for the custom VPC"
  default     = "172.16.1.0/24"
}

variable "availability_zone_us_east_1a" {
    type = string
    description = ""
    default = "us-east-1a"
  
}

variable "private_subnet_us_east_1a_tag" {
  type        = map(string)
  description = ""
  default = {
    Name = "private-subnet-us-east-1a"
  }
}

#Subnet Public 1a
variable "public_cidr_block_us_east_1a" {
  type        = string
  description = "CIDR block for the custom VPC"
  default     = "172.16.100.0/24"
}

variable "public_subnet_us_east_1a_tag" {
  type        = map(string)
  description = ""
  default = {
    Name = "public-subNet-us-east-1a"
  }
}