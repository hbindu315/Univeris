# network varibles | network-variables.tf

# define GCP region
variable "gcp_region_1" {
  type = string
  description = "GCP region"
}

# define GCP zone
variable "gcp_zone_1" {
  type = string
  description = "GCP zone"
}

# define public subnet

variable "public_subnet_cidr_1" {
  type = string
  description = "public subnet CIDR 1"
}


variable "public_subnet_cidr_2" {
  type = string
  description = "public subnet CIDR 2"
}

# define private subnet
variable "private_subnet_cidr_1" {
  type = string
  description = "private subnet CIDR 1"
}

variable "private_subnet_cidr_2" {
  type = string
  description = "private subnet CIDR 2"
}

