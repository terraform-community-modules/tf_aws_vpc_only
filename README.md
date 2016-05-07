# VPC (only) Terraform Module
=============================

A Terraform module to provide only VPC (without subnets) in AWS.

If you want to create public and private subnets using single module you can use [tf_aws_vpc module](https://github.com/terraform-community-modules/tf_aws_vpc).


Module Input Variables
----------------------

- `cidr` - VPC CIDR
- `name` - Name (optional)
- `enable_dns_support` - should be true if you want to use private DNS within the VPC (optional)
- `enable_dns_hostnames` - should be true if you want to use private DNS within the VPC (optional)

Usage
-----

```js
module "vpc" {
  source               = "github.com/terraform-community-modules/tf_aws_vpc_only"

  name                 = "production"
  cidr                 = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
```

Outputs
=======

 - `vpc_id` - VPC id
 - `vpc_cidr` - VPC CIDR block
 - `vpc_default_security_group` - The ID of the security group created by default on VPC creation

Authors
=======

Originally created and maintained by [hashicorp/atlas-examples](https://github.com/hashicorp/atlas-examples/tree/master/infrastructures/terraform/aws/network/vpc).
Hijacked by [Anton Babenko](https://github.com/antonbabenko).

License
=======

Apache 2 Licensed. See LICENSE for full details.
