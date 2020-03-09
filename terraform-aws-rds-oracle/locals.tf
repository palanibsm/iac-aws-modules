# -----------------------------------
# locals variable file
# -----------------------------------

locals {
    # security_aliases = jsondecode(data.aws_ssm_parameter.security_aliases.value)
    environment      = var.environment == "" ? data.aws_ssm_parameter.environment.value : var.environment

    tags = {
        LinkedAccountId = data.aws_ssm_parameter.aws_account_id.value      # AWS Account Id
        projectname     = var.projectname
        environment     = local.environment
    }
}