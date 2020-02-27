output "id" {
  description = "List of IDs of instances"
  value       = module.ec2_cluster.id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = module.ec2_cluster.arn
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = module.ec2_cluster.availability_zone
}

output "placement_group" {
  description = "List of placement groups of instances"
  value       = module.ec2_cluster.placement_group
}

output "key_name" {
  description = "List of key names of instances"
  value       = module.ec2_cluster.key_name
}

output "password_data" {
  description = "List of Base-64 encoded encrypted password data for the instance"
  value       = module.ec2_cluster.password_data
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_cluster.public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = module.ec2_cluster.public_ip
}

output "ipv6_addresses" {
  description = "List of assigned IPv6 addresses of instances"
  value       = module.ec2_cluster.ipv6_addresses
}

output "primary_network_interface_id" {
  description = "List of IDs of the primary network interface of instances"
  value       = module.ec2_cluster.primary_network_interface_id
}

output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2_cluster.private_dns
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.ec2_cluster.private_ip
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = module.ec2_cluster.security_groups
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = module.ec2_cluster.vpc_security_group_ids
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = module.ec2_cluster.subnet_id
}

output "credit_specification" {
  description = "List of credit specification of instances"
  value       = module.ec2_cluster.credit_specification
}

output "instance_state" {
  description = "List of instance states of instances"
  value       = module.ec2_cluster.instance_state
}

# output "root_block_device_volume_ids" {
#   description = "List of volume IDs of root block devices of instances"
#   value       = [for device in module.ec2_cluster.root_block_device : device.volume_id]
# }

# output "ebs_block_device_volume_ids" {
#   description = "List of volume IDs of EBS block devices of instances"
#   value       = [for device in module.ec2_cluster.ebs_block_device : device.volume_id]
# }

output "tags" {
  description = "List of tags of instances"
  value       = module.ec2_cluster.tags
}

output "volume_tags" {
  description = "List of tags of volumes of instances"
  value       = module.ec2_cluster.volume_tags
}

output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = module.ec2_cluster.instance_count
}