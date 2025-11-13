variable "instance_count" {
  description = "Number of compute instances to create"
  type        = number
  default     = 3
}

module "compute_instances" {
  source = "./modules/compute_instance"
  for_each = { for idx, inst in var.instances : idx => inst }
  availability_domain = each.value.availability_domain
  compartment_id      = var.compartment_id
  shape               = var.instance_shape
  display_name        = each.value.display_name
  subnet_id           = var.subnet_id
  image_id            = var.image_id
  assign_public_ip    = true
  ocpus               = var.instance_ocpus
  memory_in_gbs       = var.instance_memory
  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
}
