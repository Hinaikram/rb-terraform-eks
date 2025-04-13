terraform {
  backend "s3" {
    bucket         = "your-bucket-name"
    key            = "your/terraform/state/file"
    region         = "ap-south-1"
    encrypt        = true
    acl            = "bucket-owner-full-control"

    # Deprecated:
    # dynamodb_table = "terraform-lock"
    
    # New parameter:
    use_lockfile   = true
  }
}
