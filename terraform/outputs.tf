
output "apex_url" {
  value = oci_database_autonomous_database.apex_instance.connection_urls[0].apex_url
}