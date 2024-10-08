################################
#VPC

variable "vpc_ipv4_cidr_block" {
  type        = string
  description = "IPv4 CIDR range for VPC"
}

variable "vpc_dns_support" {
  type        = bool
  description = "Enable/Disable DNS support for VPC"
}

variable "vpc_dns_hostnames" {
  type        = bool
  description = "Enable/Disable DNS hostnames for VPC"
}

variable "vpc_name" {
  type        = string
  description = "VPC name"
}

###############################
#Subnets

variable "subnets" {
  type = map(object({
    availability_zone = string
    ipv4_cidr_block   = string
  }))
  description = "Subnet information"
}

###############################
#Internet Gateway

variable "internet_gateway_name" {
  type        = string
  description = "Name for Internet Gateway"
}

###############################
#Route table

variable "ig_route_table_name" {
  type        = string
  description = "Name for Route Table"
}

variable "ig_route_table_routes" {
  type = map(object({
    destination = string
    # target      = string
  }))
  description = "Route destination and target"
}

variable "ig_route_table_subnet_associations" {
  type        = list(string)
  description = "List of subnets to be associated to ig route table"
}

###############################
#NAT Gateway

variable "eip_ng_a_name" {
  type        = string
  description = "Name of Elastic IP"
}

variable "nat_gateway_a" {
  type        = map(string)
  description = "NAT gateway details"
}


variable "ng_a_route_table_name" {
  type        = string
  description = "Name for Route Table"
}

variable "ng_a_route_table_routes" {
  type = map(object({
    destination = string
    # target      = string
  }))
  description = "Route destination and target"
}

variable "ng_a_route_table_subnet_associations" {
  type        = list(string)
  description = "List of subnets to be associated to nat gateway route table"
}

variable "eip_ng_b_name" {
  type        = string
  description = "Name of Elastic IP"
}

variable "nat_gateway_b" {
  type        = map(string)
  description = "NAT gateway details"
}


variable "ng_b_route_table_name" {
  type        = string
  description = "Name for Route Table"
}

variable "ng_b_route_table_routes" {
  type = map(object({
    destination = string
    # target      = string
  }))
  description = "Route destination and target"
}

variable "ng_b_route_table_subnet_associations" {
  type        = list(string)
  description = "List of subnets to be associated to nat gateway route table"
}


