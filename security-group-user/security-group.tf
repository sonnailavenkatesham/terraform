module "security-group" {
  source = "../Security-group-module-developer"
  sg_name = var.sg_name
  project_name = var.project_name
  description = var.description
}