# Projeto GLPI - CI/CD com Docker, Terraform e AWS

## Objetivo do Projeto

Este repositório tem como objetivo automatizar todo o processo de construção, versionamento e provisionamento do ambiente da aplicação [GLPI](https://glpi-project.org/), utilizando as melhores práticas de DevOps. A solução inclui:

- **Build da imagem Docker do GLPI** customizada;
- **Push da imagem para o Amazon ECR** (Elastic Container Registry);
- **Provisionamento completo da infraestrutura na AWS com Terraform**, incluindo roles e permissões necessárias;
- **Preparação do ambiente para um futuro CI/CD com GitHub Actions**, visando o deploy em um cluster Kubernetes (Amazon EKS).

Esse projeto é uma base sólida para implantar o GLPI em ambientes escaláveis, automatizados e seguros, seguindo práticas modernas de infraestrutura como código (IaC) e integração contínua/entrega contínua (CI/CD).

---

## Estrutura do Repositório

- `glpi-cicd/`: Scripts de build da imagem Docker do GLPI e workflows de CI/CD.
- `iac/`: Códigos Terraform para provisionamento da infraestrutura necessária na AWS.

---

## Tecnologias Utilizadas

- Docker
- GitHub Actions
- Terraform
-- AWS 
--- IAM
--- Futuro: ECR
--- Futuro: VPC
--- Futuro: RDS
--- Futuro: Kubernetes (Amazon EKS)

---

## Próximos Passos

- Provisionar o repositorio ECR
- Criar workflows CI/CD no GitHub Actions para fazer o push da image container para o ECR
- Provisionar o RDS
- Provisionar EKS e aplicar o deploy do GLPI no cluster
- Monitoramento e escalabilidade com Prometheus/Grafana

---

## Contato

Feito por [Marcos Vinicius de Oliveira Ramos](https://www.linkedin.com/in/marcosvoramos/) — Vamos conectar!

---



CI/CD:

https://github.com/marketplace/actions/configure-aws-credentials-action-for-github-actions

https://github.com/marketplace/actions/amazon-ecr-login-action-for-github-actions

IAC:

Identity Providers:
https://aws.amazon.com/pt/blogs/aws-brasil/como-utilizar-iam-roles-para-conectar-o-github-actions-na-aws/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider