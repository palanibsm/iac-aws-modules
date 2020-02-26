module "ec2_cluster" {
  source                 = "./modules/ec2"

  instance_name          = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0f767afb799f45102"
  instance_type          = "t2.micro"
  key_name               = "cwu-master-sydney"
  monitoring             = true
  vpc_security_group_ids = ["sg-05f2dfed33be14a8b"]
  subnet_id              = "subnet-370eec51"

  tags = {
    terraform   = "true"
    environment = "dev"
  }
}