provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      # Environment = var.env
    }
  }
}

# For ACM
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"

  default_tags {
    tags = {
      # Environment = var.env
    }
  }
}
