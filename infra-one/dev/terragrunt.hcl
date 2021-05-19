include {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/fatahnuram/terraform-module-example.git//infra-pack?ref=v2.3.0"

  extra_arguments "no_input_needed" {
    commands  = get_terraform_commands_that_need_input()
    arguments = ["-input=false"]
  }
}

inputs = {
  vpc_cidr     = "10.0.10.0/24"
  subnet_cidr  = "10.0.10.128/25"
}
