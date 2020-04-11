resource "aws_instance" "instance" {
  count                  = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_groups
  subnet_id              = var.subnets[count.index]
  user_data              = var.user_data
  root_block_device {
    volume_type = "gp2"
    volume_size = 20
  }
}
