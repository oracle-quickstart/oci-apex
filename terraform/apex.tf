resource "oci_database_autonomous_database" "apex_instance" {
  compartment_id           = var.compartment_ocid
  cpu_core_count           = 1
  db_name                  = "apex${random_string.deploy_id.result}"
  data_storage_size_in_tbs = 1
  license_model            = "LICENSE_INCLUDED"
  admin_password           = var.autonomous_database_admin_password

  db_workload = "APEX"

}

resource "random_string" "deploy_id" {
  length  = 4
  special = false
}
