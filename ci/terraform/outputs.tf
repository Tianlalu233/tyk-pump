
# Generated by: gromit policy
# Generated on: Thu Jun 15 13:36:23 UTC 2023



data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk-pump" {
  value = data.terraform_remote_state.integration.outputs.tyk-pump
  description = "ECR creds for tyk-pump repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
