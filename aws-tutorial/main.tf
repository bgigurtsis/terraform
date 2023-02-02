terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
  shared_credentials_files = ["%USERPROFILE%\.aws\credentials"]
  profile = "icy101"
}

provider "aws" {
  region  = "eu-west-2"
  shared_credentials_files = ["%USERPROFILE%\.aws\credentials"]
  profile = "icy101"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
