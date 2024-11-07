output "vpc-id" {
  value = {
    for i, v in huaweicloud_vpc.this : i => v.id
  }
}