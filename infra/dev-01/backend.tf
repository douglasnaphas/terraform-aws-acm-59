terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "douglasnaphas"

    workspaces {
      name = "terraform-aws-acm-59-dev-01"
    }
  }
}
