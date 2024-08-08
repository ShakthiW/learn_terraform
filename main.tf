# provoder block
provider "aws" {
    profile = "default"
    region = "us-west-2"
}

# Resource block
Resource "aws_instance" "app_server" {
    ami = "ami-0c55b159cbfafe1f0"
    # instance_type = "t2.micro"
    instance_type = var.ec2_instance_type

    tags = {
        # Name = "MyTerraformInstance"
        Name = var.instance_name
    }
}

#### terraform init  - to initialize the terraform after any change that you have done
#### terraform apply - to apply the changes to aws
#### terraform destroy - to destroy the resources that you have created

#### terraform apply -var 'instance_name=MyInstance' -var 'ec2_instance_type=t2.micro'      - to apply the changes with the variables