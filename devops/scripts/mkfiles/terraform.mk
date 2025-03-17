init:
	./scripts/bash/terraform.sh script_terraform_init
plan:
	@./scripts/bash/terraform.sh script_terraform_plan
apply:
	@./scripts/bash/terraform.sh script_terraform_apply