variable "this_vpc_cidr_block" {
  type = "string"
  default = "10.0.0.0/16"
}

variable "this_vpc_tags" {
    type = "string"
    default = "my-vpc"
}


variable "this_pub_sub_cidr_block" {
  type = "string"
  default = "10.8.0.0/18"
}

variable "this_priv1_subnet_cidr_block" {
    type = "string"
    default = "10.0.128.0/20"
  
}
variable "this_priv2_subnet_cidr_block" {
    type = "string"
    default = "10.8.234.0/22"
}

variable "this_route_table" {
    type = "string"
    default = "route-table"
  
}

variable "this_public1_availability_zone" {
    type = "string"
    default = "sa-east-1a"
}

variable "this_private1_availability_zone" {
    type = "string"
    default = "sa-eas-1b"
}

variable "this_igw_tags" {
    type = "string"
    default = "my-igw"
  
}

variable "this_sub_pub_map_ip" {
    type = bool
    default = true
  
}

variable "this_priv1_sub_public_map_ip" {
    type = bool
    default = false

  
}

variable "this_priv1_sub_public_map_ip" {
    type = bool
    default = false

  
}
variable "this_pub_sub_tags" {
    type = "string"
    default = "public-subnet"
}

variable "this_pri1_sub_tags" {
    type = "string"
    default = "private1-subnet"
}

variable "this_pri2_sub_tags" {
    type = "string"
    default = "private2_subnet"
}

variable "this_def_Route_table_cidr_block" {
   type = string
   default = "0.0.0.0/0"
}
variable "this_def_Route_example_tag" {
   type = string
   default = "route-table2"
}
