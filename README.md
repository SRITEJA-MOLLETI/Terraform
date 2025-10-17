
# Step - 1 | Install Chocolatey
1. Open PowerShell as Administrator
2. Run below command : `
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) `

# Step - 2 | Install Terraform

1. In the same shell run below command: `choco install terraform`

# Step - 3 | Creata a new Directory and Insialize Terraform
1. Run this command in directory: `terraform init`


1. Terraform init
2. Terraform plan
3. Terraform apply
4. Terraform destory

<!-- State File -->
State file has senstitive data and all resource informatrion.
It can be stored in 3 ways:
1. Local Backend
2. Remote Backend - AWS (S3, DynamoDB)
3. Terraform Cloud - Free upto 5 users