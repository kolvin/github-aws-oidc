include "common" {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "git::https://github.com/kolvin/github-aws-oidc-provider//?ref=v1.1.3"
}

inputs = {
  github_aws_oidc_provider = {
    enabled = true
    trusted_projects_refs = [
      "kolvin/kloud",
      "kolvin/github-aws-oidc"
    ]
    managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    thumbprints         = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
    enabled_org_units = [
      "root/Lab",
      "root/workloads",
    ]
  }
}
