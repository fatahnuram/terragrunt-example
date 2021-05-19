output "vpc_id" {
  value = module.my_vpc.vpc_id
}

output "vpc_arn" {
  value = module.my_vpc.vpc_arn
}

output "subnet_id" {
  value = module.my_subnet.subnet_id
}

output "subnet_arn" {
  value = module.my_subnet.subnet_arn
}
