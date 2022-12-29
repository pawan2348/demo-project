
provider "aws" {

  

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
