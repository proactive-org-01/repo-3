provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster" "insecure_cluster" {
  cluster_identifier   = "insecure-docdb-cluster"
  master_username      = "admin"
  master_password      = "WeakPassword123!"
  engine               = "docdb"
  deletion_protection  = false

  backup_retention_period = 1
  storage_encrypted       = true
}
