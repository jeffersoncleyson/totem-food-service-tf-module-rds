# Output value definitions

############################################### [RDS] Outputs

output "security_group_id" {
  value = aws_security_group.rds_totem_food_service.id
}
output "db_instance_endpoint" {
  value = aws_db_instance.rds_instance.endpoint
}

###############################################
