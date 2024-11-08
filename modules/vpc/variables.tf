######################################################################
# VPCs (Enable LTS), Subnets variable in Custom Module
######################################################################
variable "vpc" {
  description = "VPCs attributes"
  type = list(object({
    # Default VPC attributes
    vpc_name               = string
    vpc_cidr               = string
    vpc_description        = optional(string, " vpc resources created by custom module ")
    vpc_enterprise_project = optional(string, "")
    tags                   = optional(map(any))

    # Subnets associate to VPCs
    subnets = list(object({
      subnet_name        = string
      subnet_cidr        = string
      subnet_description = optional(string, " subnet resources created by custom module ")
    }))
  }))
}