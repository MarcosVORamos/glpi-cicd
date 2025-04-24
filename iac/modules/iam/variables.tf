variable oidc_tags {
	type				= map(string)
	default			= {
		IAC = "True"
	}
	description = "Tags de criação"
}

variable role_name {
	type				= string
	default			= "ecr_role"
	description = "Nome da role"
}