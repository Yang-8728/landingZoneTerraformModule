######################################################################
# VPCs (Enable LTS), Subnets variable in Custom Module
######################################################################
variable "vpc" {
  description = "VPCs attributes"
  type = list(object({
    # Default VPC attributes
    vpc-name = string
    vpc-cidr = string
    vpc-description = optional(string, " vpc created by terraform ")
    vpc-enterprise-project = optional(string, "")
    tags = optional(map(any))

    # Subnets associate to VPCs
    subnets = list(object({
      subnet-name = string
      subnet-cidr = string
      subnet-description = optional(string, " subnet created by terraform ")
    }))
  }))
}