# Lesson17 GitHub version

Практика GitOps-пайплайна на GitHub Actions.

## Required GitHub secrets

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION`
- `TF_STATE_BUCKET`

## Pipeline behavior

- `pull_request` to `master`: validate Terraform, Ansible, Helm, Kubernetes manifests, and run Trivy security scan
- `push` to `master`: run the same checks and then execute `terraform apply`

## Remote state

Terraform uses the S3 backend configured in `terraform/backend.tf`. The bucket name is passed through `TF_STATE_BUCKET`, and the state key is `lesson17/terraform.tfstate`.
