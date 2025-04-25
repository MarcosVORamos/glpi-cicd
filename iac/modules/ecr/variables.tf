variable ecr_repository_name {
  type        = string
  description = "nome do repositorio ECR"
}

variable ecr_tags {
  type        = map(string)
  description = "Tags do projeto"
}