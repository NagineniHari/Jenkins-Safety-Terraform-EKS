terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28"
    }
  }

  backend "s3" {
    bucket       = "remote-state-aws-terraform"
    key          = "safety-dev-eks-terraform"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }

}
