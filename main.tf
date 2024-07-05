terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = var.destination_org
  token = var.gh_token
}

resource "github_repository" "gh_repo" {
  name       = var.waypoint_application
  visibility = "public"

  template {
    owner                = var.template_org
    repository           = var.template_repo
    include_all_branches = true
  }

  # Enable GitHub pages
  pages {
    build_type = "workflow"
  }
}