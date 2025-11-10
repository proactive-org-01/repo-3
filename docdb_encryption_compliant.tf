provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster" "encrypted_cluster" {
  cluster_identifier  = "encrypted-docdb"
  master_username     = "admin"
  master_password     = "SecurePassword@123"
  engine              = "docdb"
  storage_encrypted   = true
  backup_retention_period = 7
}
