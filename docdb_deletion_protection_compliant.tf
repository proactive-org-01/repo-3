provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster" "secure_cluster" {
  cluster_identifier   = "secure-docdb-cluster"
  master_username      = "admin"
  master_password      = "StrongPassword123!"
  engine               = "docdb"
  deletion_protection  = true

  backup_retention_period = 7
  storage_encrypted       = true
}
