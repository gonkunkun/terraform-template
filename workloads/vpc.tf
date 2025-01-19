locals {
  cidr_block = {
    stg : "10.10.0.0/16",
    prd : "10.20.0.0/16",
  }[var.env]
}

#trivy:ignore:AVD-AWS-0178
resource "aws_vpc" "sample" {
  cidr_block = local.cidr_block

  tags = {
    "Name" = "sample-${var.env}-vpc"
  }
  tags_all = {
    "Name" = "sample-${var.env}-vpc"
  }

  lifecycle {
    prevent_destroy = true
  }
}
