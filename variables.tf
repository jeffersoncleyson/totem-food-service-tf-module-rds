# Input variable definitions

variable "application_name" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Application environment"
  type        = string
}

variable "owner_team" {
  description = "Owener Application team"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
}

variable "db_instance_class" {
  description = "Database Instance Class"
  type    = string
  default = "db.t2.micro"
}

variable "db_engine" {
  description = "Database Engine"
  type    = string
  default = "mysql"
}

variable "db_engine_version" {
  description = "Database Engine version"
  type    = string
  default = "8.0"
}

variable "db_parameter_group" {
  description = "Database Parameter Group"
  type    = string
  default = "default.mysql8.0"
}

variable "db_storage" {
  description = "Database Storage"
  type    = number
  default = 20
}

variable "db_identifier" {
  description = "Database Identifier"
  type    = string
  default = "myrdsinstance"
}

