module "my_vpc" {
  source = "github.com/fatahnuram/terraform-module-example.git//vpc?ref=v1.0.0"

  cidr = var.vpc_cidr
}

module "my_subnet" {
  source = "github.com/fatahnuram/terraform-module-example.git//subnet?ref=v1.1.0"

  vpc_id = module.my_vpc.vpc_id
  subnet_cidr = var.subnet_cidr
}
