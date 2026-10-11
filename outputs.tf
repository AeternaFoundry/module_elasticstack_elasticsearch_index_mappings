output "elasticsearch_index_mappings_id" {
  description = "Map of id values across all elasticsearch_index_mappings, keyed the same as var.elasticsearch_index_mappings except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_mappings.elasticsearch_index_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_index_mappings_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_index_mappings, keyed the same as var.elasticsearch_index_mappings except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_mappings.elasticsearch_index_mappings : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_index_mappings_index" {
  description = "Map of index values across all elasticsearch_index_mappings, keyed the same as var.elasticsearch_index_mappings except keys with no index are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_mappings.elasticsearch_index_mappings : k => v.index if v.index != null && length(v.index) > 0 }
}
output "elasticsearch_index_mappings_mappings" {
  description = "Map of mappings values across all elasticsearch_index_mappings, keyed the same as var.elasticsearch_index_mappings except keys with no mappings are omitted"
  value       = { for k, v in elasticstack_elasticsearch_index_mappings.elasticsearch_index_mappings : k => v.mappings if v.mappings != null && length(v.mappings) > 0 }
}

