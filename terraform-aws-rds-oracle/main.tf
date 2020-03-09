# ------------------------------
# AWS RDS Module for Oracle
# ------------------------------

resource "aws_db_instance" "this" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"

  final_snapshot_identifier = "final-${var.identifier}"
}

# resource "random_string" "final_snapshot_identifier_name" {
#   length = 16
#   special = true
#   override_special = "/@£$"
# }