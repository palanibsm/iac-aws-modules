# iac-aws-modules
This repository creates a wrapper module around existing terraform modules such as EC2, S3, etc., so that it can be easily adapted by clients who wants a customized modules. Following are some examples why we need custom solution:

1) We would need some mandatory tags should be passed
2) Possible to add fixed EBS volumes