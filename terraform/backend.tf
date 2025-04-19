terraform {
  backend "s3" {
    bucket         = "devops-challenge-tf-state"       # Replace with your actual bucket name
    key            = "simpletimeservice/terraform.tfstate"
    region         = "us-east-1"                        # Match your aws_region var
    dynamodb_table = "devops-challenge-tf-locks"       # Replace with your actual DynamoDB table name
    encrypt        = true
  }
}
