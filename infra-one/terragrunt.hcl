remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket  = "fatah-terragrunt-example"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
  }
}

terraform_version_constraint = ">= 0.14.0"

terragrunt_version_constraint = ">= 0.28.0"
