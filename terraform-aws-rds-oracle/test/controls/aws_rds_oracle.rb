# encoding: utf-8
# copyright: 2018, The Authors

title 'sample section'

content = inspec.profile.file("terraform.json") 
params = JSON.parse(content)
aws_db_instance_id = params['aws_db_instance_id']['value']

describe aws_rds_instance(db_instance_identifier: aws_db_instance_id) do
  it { should exist }
  # its ('engine')         { should eq 'mysql' }
  # its ('engine_version') { should eq '5.6.37' }
  # its ('storage_type')      { should eq 'gp2' }
  # its ('allocated_storage') { should eq 10 }
  # its ('master_username')   { should eq 'db-maintain' }
  # its ('db_instance_class') { should eq 'db.t3.micro' }
end
