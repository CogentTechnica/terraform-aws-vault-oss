variable "vault_account" {
  description = "The 12-digit account ID of the AWS account where vault will be deployed"
  default     = "780340742095"
}

variable "master_role" {
  description = "The administravitve assume role that should be assumed"
  default     = "master_bootstrap_role"
}

variable "vpc_id" {
  description = "VPC ID"
  default     = "vpc-0d6e5373635c89ab2"
}

variable "allowed_inbound_cidrs" {
  default = ["10.0.0.0/8", "192.168.0.0/16"]
  description = "List of CIDR blocks to permit inbound Vault access from"
}

variable "vault_version" {
  description = "Vault version"
  default     = "1.4.2"
}

variable "owner" {
  description = "value of owner tag on EC2 instances"
  default     = "saic-"
}

variable "name_prefix" {
  description = "prefix used in resource names"
  default     = "dev-"
}

variable "key_name" {
  description = "SSH key name for Vault instances"
  default     = "vault-enterprise"
}

variable "instance_type" {
  default     = "m5.large"
  description = "Instance type for Vault instances"
}

variable "vault_nodes" {
  default     = "5"
  description = "number of Vault instances"
}

variable "vault_cluster_version" {
  default     = "0.0.1"
  description = "Custom Version Tag for Upgrade Migrations"
}

# The following CIDR blocks are being declared for subnets that
# must be created for the NAT gateway and lambda functions
# they are unlikely ton conflict with default subnets in
# default VPCs, but you should change these if you are using a custom
# VPC or have modified your default subnets configuration

variable "nat_gateway_subnet_cidr" {
  description = "CIDR block for NAT gateway subnet"
  default     = "10.38.7.0/27"
}

variable "lambda_primary_subnet_cidr" {
  description = "CIDR block for primary lambda subnet"
  default     = "10.38.7.32/27"
}

variable "lambda_secondary_subnet_cidr" {
  description = "CIDR block for secondary lambda subnet"
  default     = "10.38.7.64/27"
}
