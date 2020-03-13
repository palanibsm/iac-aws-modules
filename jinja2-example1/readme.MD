Basic Example of using Jinja2 in CloudFormation:

Install Python
   sudo yum install python
Install pip
  curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
  sudo python get-pip.py
Install Jinja2
  pip install Jinja2
To invoke Jinja2, we will use a simple python wrapper script j2.py

vi template1.yaml

export ENVIRONMENT_NAME=Development
export AWS_ACCOUNT_NUMBER=1234567890

Run the following command:
cat template1.yaml | python j2.py

The result of this command will be produce final CF required

If we wanted to create multiple S3 buckets then use template2.yaml
cat template2.yaml | python j2.py
