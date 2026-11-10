provider "aws" {
 region = "us-east-2"
}

module "ec2-dev"{
source = "git::https://github.com/maheshwaris1225-smn/Terraform-modules-demo//Modules/myec2-module"
instancename = "Dev-Server"
instance_type = "t2.medium"
}

module "ec2-test"{
source = "git::https://github.com/maheshwaris1225-smn/Terraform-modules-demo//Modules/myec2-module"
instancename = "Test-Server"
instance_type = "t2.large"
}

module "sg-dev"{
source = "git::https://github.com/maheshwaris1225-smn/Terraform-modules-demo//Modules/mysg-module"
port = 8989
}

module "sg-test"{
source = "git::https://github.com/maheshwaris1225-smn/Terraform-modules-demo//Modules/mysg-module"
port = 7979
}