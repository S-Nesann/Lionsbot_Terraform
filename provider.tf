terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}
provider "aws" {
  region = "ap-southeast-1"
  alias = "my-asia"
  profile = "default"
}
provider "aws" {
  region = "eu-west-1"
  alias = "my-europe"
  profile = "default"
}