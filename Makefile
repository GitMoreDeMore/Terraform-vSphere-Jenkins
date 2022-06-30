apply:
	@echo "==> Applying Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform apply $(FLAGS)

delete-lock-files:
	@echo "==> Deleting Terraform lock files..."
	@find ./ -type f -iname ".terraform.lock.hcl" -delete

destroy:
	@echo "==> Destroying Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform destroy $(FLAGS)

fmt:
	@echo "==> Formatting Terraform files..."
	@find ./ -type f -iname "*.tf" -exec terraform fmt '{}' \;

force-unlock:
	@echo "==> Unlocking Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform force-unlock $(FLAGS)

init:
	@echo "==> Initializing Terraform..."
	terraform --version
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform init

output:
	@echo "==> Outputting Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform output $(FLAGS)

plan:
	@echo "==> Planning Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform plan $(FLAGS)

validate:
	@echo "==> Validating Terraform..."
	cd deployments/$(ENVIRONMENT)/$(GROUP)/$(SUBGROUP) && terraform validate
