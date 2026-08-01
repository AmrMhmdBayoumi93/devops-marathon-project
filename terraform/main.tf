locals {
  project_name = "devops-project"

  common_tags = {
    Project = local.project_name
    Owner   = "Amr Mohamed"
    Managed = "Terraform"
  }
}