# Non-Compliant - Backup retention less than 7 days
resource "aws_docdb_cluster" "noncompliant" {
  cluster_identifier        = "docdb-backup-noncompliant"
  master_username           = "admin"
  master_password           = "Password123!"
  backup_retention_period   = 5
}