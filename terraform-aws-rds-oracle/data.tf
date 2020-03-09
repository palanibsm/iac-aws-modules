data "aws_ssm_parameter" "environment" {
  name = "/master/vars/environment"
}

data "aws_ssm_parameter" "aws_account_id" {
  name = "/master/vars/aws_account_id"
}