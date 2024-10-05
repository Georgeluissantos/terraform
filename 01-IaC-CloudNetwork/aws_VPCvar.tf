###########################variable VPC/IGW ###############################
variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the custom VPC"
  default     = "172.16.0.0/16"
}

variable "vpc_tags" {
  type        = map(string)
  description = "Tag paraa VPC"
  default = {
    Name = "VPC-Producao" #Nome da VPC
  }
}

variable "internet_gateway_tags" {
  type        = map(string)
  description = "Tag para Internet Gateway"
  default = {
    Name = "Producao-IGW"
  }
}
