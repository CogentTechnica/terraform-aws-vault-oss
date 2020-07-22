# Specify the provider and region details
provider "aws" {
  region                  = "us-east-1"
  assume_role {
  role_arn 	              = "arn:aws:iam::${var.vault_account}:role/${var.master_role}"
  session_name            = "terraform-cloud-session"
 }
}
