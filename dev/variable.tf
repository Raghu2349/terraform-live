variable "region" {
  description = "Region where VPC & instances will be created"
}
variable "amis" {
  type = "map"
  default = {
  us-east-2 = "axxxxx"
  us-east-1 = "ami-0871ae9e379c8be5b"

  }
  description = "AMIs by region"
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
}


variable "subnet_cidrs_public" {
  type = "list"
}

variable "projectName" {
   description="Name of the Project"
}
#variable "availability_zones"{
#	type ="list"
#}
