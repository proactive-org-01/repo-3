provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster" "unencrypted_cluster" {
  cluster_identifier  = "unencrypted-docdb"
  master_username     = "admin"
  master_password     = "WeakPassword123"
  engine              = "docdb"
  storage_encrypted   = false
  backup_retention_period = 7
}
