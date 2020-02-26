module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "2.12.0"

  name                   = var.instance_name
  instance_count         = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = var.monitoring
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  tags                   = var.tags
}