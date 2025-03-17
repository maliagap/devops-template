#!/bin/bash
CONTAINER_ENGINE=podman # docker

script_terraform_cmd ( ) {
  $CONTAINER_ENGINE run --rm -v $PWD:/app -w /app \
	-e ARM_CLIENT_ID=$ARM_CLIENT_ID \
	-e ARM_CLIENT_SECRET=$ARM_CLIENT_SECRET \
	-e ARM_TENANT_ID=$ARM_TENANT_ID \
	-e ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID hashicorp/terraform $1
}

script_terraform_init () {
  script_terraform_cmd "init"
}

script_terraform_plan () {
  script_terraform_cmd "plan"
}

script_terraform_apply () {
  script_terraform_cmd "apply -auto-approve"
}

script_terraform_fmt () {
  script_terraform_cmd "fmr -recursive"
}

script_terraform_validate () {
  script_terraform_cmd "validate"
}

script_terraform_lint () {
  $CONTAINER_ENGINE run --rm -v "$PWD:/app" -w /app ghcr.io/terraform-linters/tflint
}

"$@"
