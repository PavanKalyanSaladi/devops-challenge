# Devops-Challenge
We are using the Linux Machine (Ubuntu) as Host to perform this operation.

> .
> 
> ├── app <-- app files/directories and Dockerfile go here
> 
> └── terraform <-- Terraform files/directories go here (i.e. we will run `terraform plan`/`terraform apply` from here)
<br>

### 🌱 Step 0: Prerequisites (Tools to install)
1. GIT
   ```
   sudo apt-get update
   sudo apt-get install git -y
   ```
2. Docker
   ```
   sudo apt install docker.io -y
   ```
3. Terraform
   ```
   wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
   echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   sudo apt update && sudo apt install terraform
   ```
4. AWS-CLI
   ```
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   sudo apt install unzip
   unzip awscliv2.zip
   sudo ./aws/install
   ```

