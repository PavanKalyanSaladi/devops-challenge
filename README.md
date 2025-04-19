# Devops-Challenge (SimpleTimeService)
A tiny Flask-based microservice that returns the current timestamp and requester's IP in JSON format. <br>
We are using the Linux distirbution (Ubuntu) as Host Machine to perform this operation.

#### Directory Structure
```
.
├── app
│   ├── main.py
│   ├── Dockerfile
│   └── requirements.txt
└── terraform
    ├── main.tf
    ├── variables.tf
    ├── backend.tf
    └── terraform.tfvars
```

### 🌱 Prerequisites
1. Docker Hub Account
2. AWS Account (minimun free-tier)

### Step 1: Tools to install
#### 1. [GIT](https://git-scm.com/downloads/linux)
   ```
   sudo apt-get update
   sudo apt-get install git -y
   ```
#### 2. [Docker](https://docs.docker.com/get-docker/)
   ```
   sudo apt install docker.io -y
   ```
#### 3. [Terraform](https://developer.hashicorp.com/terraform/downloads)
   ```
   wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
   echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   sudo apt update && sudo apt install terraform
   ```
#### 4. [AWS-CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
   ```
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   sudo apt install unzip
   unzip awscliv2.zip
   sudo ./aws/install
   ```

### Step 2: Configure the AWS
Before configuring the AWS, firstly you need to create a Access Key and Secret Key.
##### Login to your AWS account -> Navigate to your Profile -> Security Credentials -> Create access key -> Store the keys and click on Done.
<img width="713" alt="image" src="https://github.com/user-attachments/assets/078802db-c822-4cfa-afab-e05ac2b03fdb" />

Go to the Bash Terminal of Host -
```
aws configure
```

You will be asked to enter the key details - as Example
```
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-east-1
Default output format [None]: json
```

### Step 3: Let's Execute the Task
##### Clone the GIT Repository
```
https://github.com/PavanKalyanSaladi/devops-challenge.git
```
##### Configure the GIT
```
git config user.name "<your-name>"
git config user.email "<example@gmail.com>"
```
##### Docker build (skip to use the same image pushed by creator)
```
cd app/
docker build -t <yourname>/python-app ."
```

##### Docker push (skip to use the same image pushed by creator)
```
docker login
docker push <yourname>/python-app:latest
```

##### Docker pull
```
docker pull pavankalyan2001/python-app:latest
```

##### Terraform Exection
```
cd terraform

terraform init -reconfigure
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

## Note: - Created a GitHub Action, configure the credentials
##### Go to GitHub → Repository → Settings → Secrets and Variables → Actions
| Secret Name            | Description                                |
|------------------------|--------------------------------------------|
| `AWS_ACCESS_KEY_ID`    | IAM user's **Access Key ID**               |
| `AWS_SECRET_ACCESS_KEY`| IAM user's **Secret Access Key**           |
| `DOCKERHUB_USERNAME`   | Your or their **DockerHub username**       |
| `DOCKERHUB_TOKEN`      | [DockerHub access token](https://hub.docker.com/settings/security) |
