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

#S3
variable "bucket_name_terraform_state"{
  type        = string
  description = "Nome do bucket para armazenar o arquivo .tfstate"
}

variable "tags" {
  type        = map(string)
  description = "Tags para os recursos do projeto"
}