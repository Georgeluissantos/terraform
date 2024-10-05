# Subnet Private 1a
variable "private_cidr_block_us_east_1a" { 
  type        = string
  description = "CIDR block for the private subnet in us-east-1a"
  default     = "172.16.1.0/24"
}

variable "availability_zone_us_east_1a" {
  type        = string
  description = "Availability zone for the private subnet in us-east-1a"
  default     = "us-east-1a"
}

variable "private_subnet_tag_us_east_1a" {
  type        = map(string)
  description = "Tags for the private subnet in us-east-1a"
  default = {
    Name = "private-subnet-us-east-1a"
  }
}

# Subnet Public 1a
variable "public_cidr_block_us_east_1a" {
  type        = string
  description = "CIDR block for the public subnet in us-east-1a"
  default     = "172.16.100.0/24"
}

variable "public_subnet_tag_us_east_1a" {
  type        = map(string)
  description = "Tags for the public subnet in us-east-1a"
  default = {
    Name = "public-subnet-us-east-1a"
  }
}
