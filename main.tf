provider "aws" {
   access_key                  = "test"
  secret_key                  = "test"
  region                      = "eu-west-3"

endpoints {
    ec2 = "http://localhost:4566"
    s3  = "http://localhost:4566"
    iam = "http://localhost:4566"
  }

  # Options obligatoires pour simuler sans vraies clés
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true


 }

resource "aws_vpc" "reseau_prive" {
  cidr_block = "10.0.0.0/16"
  
 tags = {Name = "reseau_vpc"}

}

resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.reseau_prive.id

  ingress {
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

}

 ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

}

 egress {
  from_port = 0
  to_port = 0
  protocol = -1
  cidr_blocks = ["0.0.0.0/0"]

}



tags = {Name = "Virgil_group"}
}

resource "aws_instance" "mon_serveur" {
 ami  =  "ami-071c390f398551e13"
 instance_type= "t2.micro"
 vpc_security_group_ids = [aws_security_group.security_group.id]

 tags = {Name = "Instance_EC2"}
}

resource "local_file" "inventory_file" {
content = " [prod]\nmon_serveur ansible_host = ${aws_instance.mon_serveur.public_ip}\n\n[all:vars]\nansible_user = ubuntu "
filename = "inventory.ini"
}


output "public_ip" { 
  value = aws_instance.mon_serveur.public_ip
}


 