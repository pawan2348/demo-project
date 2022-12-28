
provider "aws" {

  access_key = "AKIASRYPUS3KX5MKMP65"

  secret_key = "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"

  region     = "ap-south-1"

}

 

terraform {

  cloud {

    organization = "saheli"

    token        = "Wv3uz1odyPwRzA.atlasv1.hxcHpg9NfQStlo6VyI9D5x8kxU6iu6wzNN9JthqoSrXzhyfmX4G1SQbbkWj9MNP5Xms" # valid TFC token

 

    workspaces {

      name = "dev-workspace"

    }

  }

}

 

resource "aws_instance" "ap" {

  ami           = "ami-06489866022e12a14"

  instance_type = "t2.micro"

  tags = {

    Name = "india"

  }

}
