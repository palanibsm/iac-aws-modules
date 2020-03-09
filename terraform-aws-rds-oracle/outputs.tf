output "aws_db_instance_id" {
    value = "${aws_db_instance.this.id}"
}

output "aws_db_instance_arn" {
  value = "${aws_db_instance.this.arn}"
}

# output "randomstring" {
#   value = "${random_string.final_snapshot_identifier_name.result}"
# }