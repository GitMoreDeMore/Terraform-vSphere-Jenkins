SHELL := /bin/bash
apply:
	@echo "==> Applying Terraform..."
	cd infrastructure/$(COMPONENT) && terraform apply $(FLAGS)

delete-lock-files:
	@echo "==> Deleting Terraform lock files..."
	@find ./ -type f -iname ".terraform.lock.hcl" -delete

destroy:
	@echo "==> Destroying Terraform..."
	cd infrastructure/$(COMPONENT) && terraform destroy $(FLAGS)

fmt:
	@echo "==> Formatting Terraform files..."
	@find ./ -type f -iname "*.tf" -exec terraform fmt '{}' \;

force-unlock:
	@echo "==> Unlocking Terraform..."
	cd infrastructure/$(COMPONENT) && terraform force-unlock $(FLAGS)

init:
	@echo "==> Initializing Terraform..."
	terraform --version
	cd infrastructure/$(COMPONENT) && \
	if [[ $(COMPONENT) == *"vsphere"* ]] ; then cp -v ../../vsphere.auto.tfvars . ; fi && \
	terraform init

output:
	@echo "==> Outputting Terraform..."
	cd infrastructure/$(COMPONENT) && terraform output $(FLAGS)

plan:
	@echo "==> Planning Terraform..."
	cd infrastructure/$(COMPONENT) && terraform plan $(FLAGS)

validate:
	@echo "==> Validating Terraform..."
	cd infrastructure/$(COMPONENT) && terraform validate
