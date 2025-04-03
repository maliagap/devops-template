init:
	@./devops/scripts/bash/terraform.sh script_terraform_init
plan:
	@./devops/scripts/bash/terraform.sh script_terraform_plan
apply:
	@./devops/scripts/bash/terraform.sh script_terraform_apply
validate:
	@./devops/scripts/bash/terraform.sh script_terraform_validate
fmt:
	@./devops/scripts/bash/terraform.sh script_terraform_fmt
lint:
	@./devops/scripts/bash/terraform.sh script_terraform_lint
