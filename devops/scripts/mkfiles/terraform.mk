init:
	@./scripts/bash/terraform.sh script_terraform_init
plan:
	@./scripts/bash/terraform.sh script_terraform_plan
apply:
	@./scripts/bash/terraform.sh script_terraform_apply
validate:
	@./scripts/bash/terraform.sh script_terraform_validate
fmt:
	@./scripts/bash/terraform.sh script_terraform_fmt
lint:
	@./scripts/bash/terraform.sh script_terraform_lint
