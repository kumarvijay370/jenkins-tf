variable "availability_domain" {}
variable "compartment_id" {}
variable "shape" {}
variable "display_name" {}
variable "metadata" {}
variable "subnet_id" {}
variable "assign_public_ip" { default = true }
variable "image_id" {}
variable "ocpus" { default = 1 }
variable "memory_in_gbs" { default = 8 }