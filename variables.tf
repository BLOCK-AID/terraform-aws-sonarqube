#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_prefix" {
  type        = string
  description = "Name prefix for resources on AWS"
  default = "blockaid"
}

variable "tags" {
  type        = map(string)
  default     = {"app"="sonarqube"}
  description = "Resource tags"
}

#------------------------------------------------------------------------------
# AWS REGION
#------------------------------------------------------------------------------
variable "region" {
  type        = string
  description = "AWS Region the infrastructure is hosted in"
  default = "us-east-2"
}

#------------------------------------------------------------------------------
# AWS Networking
#------------------------------------------------------------------------------
variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
  default = "vpc-06efc3897b848cf67"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of Availability Zones"
  default = [ "us-east-2a", "us-east-2c" ]
}

variable "public_subnets_ids" {
  type        = list(string)
  description = "List of Public Subnets IDs"
  default = [ "subnet-0cdaa44dadb3daa6d", "subnet-0092fe3d0b654da70" ]
}

variable "private_subnets_ids" {
  type        = list(string)
  description = "List of Private Subnets IDs"
  default = [ "subnet-02bcc60822d855c6b", "subnet-0311e2befdd2c88d6" ]
}

variable "db_instance_size" {
  type        = string
  default     = "db.r5.large"
  description = "DB instance size"
}

variable "db_name" {
  type        = string
  default     = "sonar"
  description = "Default DB name"
}

variable "db_username" {
  type        = string
  default     = "sonar"
  description = "Default DB username"
}

variable "db_password" {
  type        = string
  default     = ""
  description = "DB password"
}

#------------------------------------------------------------------------------
# AWS RDS settings
#------------------------------------------------------------------------------
variable "db_engine_version" {
  type        = string
  default     = "12.10"
  # default     = "11.7"
  description = "DB engine version"
}

#------------------------------------------------------------------------------
# Sonarqube image version
#------------------------------------------------------------------------------
variable "sonarqube_image" {
  description = "Sonarqube image"
  type        = string
  default     = "sonarqube:lts"
}
