resource "oci_database_autonomous_database" "apex_instance" {
    #Required
    compartment_id = var.compartment_ocid
    cpu_core_count = 1
    db_name = "Apex"
    data_storage_size_in_tbs=1
    license_model="LICENSE_INCLUDED"
    #Optional
    admin_password = var.autonomous_database_admin_password
    
    db_workload = "APEX"
    
}