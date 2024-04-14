# This file sets up the backend for remote state management, such as Terraform Cloud:

terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "path/to/my/terraform/state/file"
    region = "us-west-2"
  }
}
