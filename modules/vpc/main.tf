resource "huaweicloud_vpc" "this" {
  for_each = {for i, v in var.vpc: i => v}
  name = each.value.vpc-name
  cidr = each.value.vpc-cidr
  enterprise_project_id = each.value.vpc-enterprise-project
  tags = each.value.tags
}
