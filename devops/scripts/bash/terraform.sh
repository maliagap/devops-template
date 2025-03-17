#!/bin/bash

script_terraform_cmd ( ) {
  podman run --rm -v $PWD:/app -w /app \
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

"$@"
