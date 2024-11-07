# Huawei Cloud VPC Terraform Module (F-1.0.0)

## Intoduction

This Custom Terraform module will preserved Virtual Private Cloud (VPCs) on Huawei Cloud.

## ---------- Under Maintainance -------------


## ---------- Example ------------------------

```sh
module "vpc_module_test" {
  source = "../modules/vpc"

  vpc = [
      {
        vpc-name = "my-vpc-1"
        vpc-cidr = "10.0.0.0/16"
        tags = {
          Environment = "dev"
          Version = "1.0.0"
        }
        subnets = [
          {
            subnet-name = "subnet-1-my-vpc-1"
            subnet-cidr = "10.0.1.0/24"
          },
          {
            subnet-name = "subnet-2-my-vpc-1"
            subnet-cidr = "10.0.2.0/24"
          },
          {
            subnet-name = "subnet-3-my-vpc-1"
            subnet-cidr = "10.0.3.0/24"
          },
        ]
      },
      {
        vpc-name = "my-vpc-2"
        vpc-cidr = "10.1.0.0/16"
        vpc-description = "test optional"
        tags = {
          Environment = "qa"
          Version = "1.0.0"
        }
        subnets = [
          {
            subnet-name = "subnet-1-my-vpc-2"
            subnet-cidr = "10.1.1.0/24"
          },
          {
            subnet-name = "subnet-2-my-vpc-2"
            subnet-cidr = "10.1.2.0/24"
          },
        ]
      }
    ]
}
```

## References

These are useful resources.

[Interesting Flatten Techniques](https://discuss.hashicorp.com/t/looping-through-nested-list-object-over-list-object/57179/2)
[Flatten Doc](https://developer.hashicorp.com/terraform/language/functions/flatten)