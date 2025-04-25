#IAM
variable "iam_role_name" {
  type        = string
  description = "O nome da IAM role"
}

#ECR
variable "ecr_repository_name" {
  type        = string
  description = "Nome do repositorio ECR"
}

variable "ecr_tags" {
  type        = map(string)
  description = "Tags do projeto"
}