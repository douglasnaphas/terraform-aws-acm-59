provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "douglas"
}

resource "aws_s3_bucket" "b" {
  provider = aws
  bucket   = "terraform-aws-acm-59-01"
  acl      = "private"

  tags = {
    Name = "bucket terraform-aws-acm-59-01"
  }
}

resource "aws_s3_bucket" "c" {
  provider = aws.douglas
  bucket   = "terraform-aws-acm-59-02"
  acl      = "private"

  tags = {
    Name = "bucket terraform-aws-acm-59-01"
  }
}
