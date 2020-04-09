locals {
  instance_public_ips = "${compact(concat(coalescelist(aws_instance.instance.*.public_ip, aws_instance.instance.*.public_ip), list("")))}"

  instance_pub_ips = aws_instance.instance.*.public_ip
}

output "public_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = ["${local.instance_public_ips}"]
}

output "pub_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = local.instance_pub_ips
}

# output "availability_zone" {
#   description = "Availability zone of the instances."
#   value       = aws_instance.instance.availability_zone
# }

# output "key_name" {
#   description = "List of key names of instances"
#   value       = aws_instance.instance.key_name
# }

# output "public_ip" {
#   description = "Public IP address assigned to the instance"
#   value       = aws_instance.instance.public_ip
# }

# output "vpc_security_group_ids" {
#   description = "List of associated security groups of instance."
#   value       = aws_instance.instance.vpc_security_group_ids
# }

# output "subnet_id" {
#   description = "List of IDs of VPC subnets of instances"
#   value       = aws_instance.instance.subnet_id
# }

# output "arn" {
#   description = "List of instances arn"
#   value       = aws_instance.instance.arn
# }