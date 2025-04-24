module "iam" {
  source = "./modules/iam"
  oidc_tags = {
    IAC     = "True"
    Projeto = "GLPI"
  }
  role_name = var.iam_role_name
}
