title 'Tests to confirm AWS CLI works as expected'

plan_name = input('plan_name', value: 'aws-cli')
plan_ident = "#{ENV['HAB_ORIGIN']}/#{plan_name}"
hab_path = input('hab_path', value: '/tmp/hab')

control 'core-plans-aws-cli' do
  impact 1.0
  title 'Ensure AWS CLI is working as expected'
  desc '
  We first check that the AWS executable is present and then
  run the AWS CLI `--version` method to verify it is working.
  '
  aws = command("#{hab_path} pkg path #{plan_ident}")
  describe aws do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
  end
  aws = "#{aws.stdout.strip}/bin/aws"

  describe file(aws) do
    it { should exist }
    its('size') { should > 0 }
    it { should be_executable }
  end

  describe command("#{aws} --version") do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
    its('stdout') { should match /aws-cli/ }
    its('stderr') { should be_empty }
  end
end