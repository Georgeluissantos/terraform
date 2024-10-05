# Tag Route Table (RT) Private - us-east-1a
variable "rt_private_tag_us_east_1a" {
  type        = map(string)
  description = "Tags for the private route table in us-east-1a"
  default = {
    "Name" = "RT-Privado-us-east-1a" 
  }
}

# Tag Route Table (RT) Public - us-east-1a
variable "rt_public_tag_us_east_1a" {
  type        = map(string)
  description = "Tags for the public route table in us-east-1a"
  default = {
    "Name" = "RT-Public-us-east-1a"
  }
}

# CIDR block for destination route (Default Route for Internet)
variable "destination_cidr_block" {
  type        = string
  description = "The CIDR block for the destination route (e.g., '0.0.0.0/0' for all traffic)"
  default     = "0.0.0.0/0"  # Rota padrão para toda a Internet
}
