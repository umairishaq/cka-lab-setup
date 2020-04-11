provider "aws" {
  profile = "mylabTerraformCli"
  region  = "us-east-1"
}

data "local_file" "user_data" {
  filename = "./setup.sh"
}

module "master_node" {
  source = "./module/ec2"

  instance_count  = var.master_count
  ami             = var.ami
  key_name        = var.key_name
  instance_type   = var.master_instance_type
  security_groups = var.security_groups
  subnets         = var.subnets
  user_data       = data.local_file.user_data.content
}

module "worker_nodes" {
  source = "./module/ec2"

  instance_count  = var.worker_count
  ami             = var.ami
  key_name        = var.key_name
  instance_type   = var.worker_instance_type
  security_groups = var.security_groups
  subnets         = var.subnets
  user_data       = data.local_file.user_data.content
}