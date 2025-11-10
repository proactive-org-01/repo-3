# Compliant - Backup retention is 7 days or more
resource "aws_docdb_cluster" "compliant" {
  cluster_identifier        = "docdb-backup-compliant"
  master_username           = "admin"
  master_password           = "Password123!"
  backup_retention_period   = 7
}