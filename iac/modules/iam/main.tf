resource "aws_iam_openid_connect_provider" "oidc-git" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]

  tags = var.oidc_tags

}

#Cria a Role
resource "aws_iam_role" "ecr_push_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Principal": {
                "Federated": "arn:aws:iam::436421610341:oidc-provider/token.actions.githubusercontent.com"
            },
            "Condition": {
                "StringEquals": {
                    "token.actions.githubusercontent.com:aud": [
                        "sts.amazonaws.com"
                    ],
                    "token.actions.githubusercontent.com:sub": [
                        "repo:MarcosVORamos/glpi-cicd:ref:refs/heads/main"
                    ]
                }
            }
        }
    ]
  })
}

#Cria a Policy inline para a role
resource "aws_iam_role_policy" "ecr_push_role_policy" {
  name    = "${var.role_name}-policy"
  role    = aws_iam_role.ecr_push_role.name
  policy  = data.aws_iam_policy_document.ecr_push_policy.json
}
