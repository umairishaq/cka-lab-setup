output "worker_public_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = "${module.worker_nodes.public_ips}"
}

output "master_public_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = "${module.master_node.public_ips}"
}

output "worker_pub_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = "${module.worker_nodes.pub_ips}"
}