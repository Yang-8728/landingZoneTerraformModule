output "vpc-id" {
  description = "VPC - ID"
  value = {
    for i, v in huaweicloud_vpc.this : i => v.id
  }
}

output "vpc-name" {
  description = "VPC - Name"
  value = {
    for i, v in huaweicloud_vpc.this : i => v.name
  }
}