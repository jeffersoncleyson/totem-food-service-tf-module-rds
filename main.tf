#create a security group for RDS Database Instance
resource "aws_security_group" "rds_totem_food_service" {
  name = "rds_totem_food_service"
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    App = var.application_name,
    Environment = var.environment,
    OwnerTeam = var.owner_team
  }
}

#create a RDS Database Instance
resource "aws_db_instance" "rds_instance" {
  engine                 = var.db_engine
  identifier             = var.db_identifier
  allocated_storage      = var.db_storage
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = var.db_parameter_group
  vpc_security_group_ids = ["${aws_security_group.rds_totem_food_service.id}"]
  skip_final_snapshot    = true
  publicly_accessible    = true

  tags = {
    App = var.application_name,
    Environment = var.environment,
    OwnerTeam = var.owner_team
  }
}
