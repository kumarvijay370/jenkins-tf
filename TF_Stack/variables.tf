variable "compartment_id" {default = "ocid1.compartment.oc1..aaaaaaaakgdpi5w6nqwqnkcnuzjbozuhpdwza53rboq7etkoeqn3osa6rxaq"}
variable "subnet_id" {default = "ocid1.subnet.oc1.iad.aaaaaaaa4xmm6gsqq2kvebwpxwpmm7ayq6jnglpni73ob5avk5a6efiuxcta"}
variable "image_id" {default = "ocid1.image.oc1.iad.aaaaaaaamqgcmucphwjorcrv7fzruxihhffn7rhq35svwwstd66uxqmsbz3q"}
variable "instance_shape" { default = "VM.Standard.E5.Flex" }
variable "instance_ocpus" { default = 2 }
variable "instance_memory" { default = 16 }
variable "ssh_public_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGooH+UVirFR7ACVJ0QBx8Hkk9UZ8ELsUx5y67J3flvDYRXz5P+pxJvSUmrrC0fFJaq4HjGTPR4FSzI6SZW3FlMiNEknO45MrVbDmeaaIbfimZTFbd7spFxMwntyYOpj+0NuvbKCxRAVaEDjxAPfhtxjWzxlNPuIEQ4rteYX+Sd2Zy9dcaHIpkTsoldZD6MiJJQNJbfpOy/n0+pZSIc9gy1+cNpXyBueZavoFFcuRByFyaoBZdctP65wD8MuePQqFY0k9m2OF4yE2DVTl7EbiMTU+7XNLEHl8rK8MulNdw4E2mSj3k9cavctd+69PKOnVbgMzLWcIWXKrctTQoYeERit60PwSAP5rvwZn5rIlkR8JsKNcwEf8t7TLFntloPgCoCMIIkjXrMBKKpS+Gseg8q+4ukCjQU9qTjr/3mPCQa9fzWRgSJsF61eByIN3nHwgiV1/807alooELA3rfviysSFadeYLe4Z2+hIbGNMby+7cB6xmcFUB1gdaRIFRjRf8= desktopuser@sd-a4afbb05\n"
}
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaagk7vawoct25qfysbbqa3345lfwpxw6k5p6aszky66ujckyo7sysa"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaa6kv74wu43e5lyacntidc5hw2n4ojgdhoijosx6dcsne2canszdiq"
}
variable "fingerprint" {
  default = "78:a9:41:aa:e6:74:87:51:48:63:2d:c0:bd:6e:78:34"
}
variable "key_file" {
}
variable "home_region" {
  default = "us-ashburn-1"
}

variable "instances" {
    description = "Instance configuration map"
    type = list(object({
    display_name  = string
    availability_domain = string
  }))
    default = [
        { display_name = "app-server-1", availability_domain = "liOm:US-ASHBURN-AD-1"},
        { display_name = "app-server-2", availability_domain = "liOm:US-ASHBURN-AD-2"},
        { display_name = "app-server-3", availability_domain = "liOm:US-ASHBURN-AD-3"}
    ]
}
