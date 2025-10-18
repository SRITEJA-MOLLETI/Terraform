# Step - 1 | Install Chocolatey
1. Open PowerShell as Administrator
2. Run below command : 
`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) `

# Step - 2 | Install Terraform
1. In the same shell run below command: `choco install terraform`

# Step - 3 | Create a new Directory and Initialize Terraform
1. Run this command in directory: `terraform init`

## Terraform Commands
1. Terraform init
2. Terraform plan
3. Terraform apply
4. Terraform destroy

## State File
State file has sensitive data and all resource information.
It can be stored in 3 ways:
1. Local Backend
2. Remote Backend - AWS (S3, DynamoDB)
3. Terraform Cloud - Free up to 5 users

## Remote Backend - AWS
This requires Bootstrapping to be done:
1. Create S3 and DynamoDB using terraform
2. Then configure Backend to S3 in the main.tf
3. Run `terraform init`
It will recognize that there is new backend configured and will switch to it.

## Remote Backend - Terraform Cloud
1. Sign in to Hashicorp using GitHub
2. Create an organization
3. Create a workspace
4. Configure backend in main.tf with Terraform Cloud as Remote Backend
5. Run `terraform init`
6. Configure AWS KEYS  as variables in Terraform Cloud workspace
7. Run `terraform apply`

