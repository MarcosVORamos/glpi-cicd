module "iam" {
  source = "./modules/iam"
  oidc_tags = {
    IAC     = "True"
    Projeto = "GLPI"
  }
  role_name = var.iam_role_name
}

module "ecr" {
  source              = "./modules/ecr"
  ecr_repository_name = var.ecr_repository_name
  ecr_tags            = var.ecr_tags
}