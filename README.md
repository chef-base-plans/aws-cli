[![Build Status](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_apis/build/status/chef-base-plans.aws-cli?branchName=master)](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_build/latest?definitionId=99&branchName=master)

# AWS CLI

The [AWS Command Line Interface](https://aws.amazon.com/cli/) (CLI) is a unified tool to manage your AWS services. With just one tool to download and configure, you can control multiple AWS services from the command line and automate them through scripts.

## Maintainers

The Habitat Maintainers humans@habitat.sh

## Type of Package

[binary wrapper package](https://www.habitat.sh/docs/best-practices/#binary-wrapper-packages)

## Usage

### Unix
```bash
hab pkg install core/aws-cli
hab pkg exec core/aws-cli aws --version
```

### Windows
```powershell
hab pkg install core/aws-cli
hab pkg exec core/aws-cli aws.cmd --version
```
