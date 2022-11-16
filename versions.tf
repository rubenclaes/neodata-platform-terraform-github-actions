terraform {
  required_version = ">= 1.1.0"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.31.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }

  cloud {
    organization = "Neodata"

    workspaces {
      name = "gh-actions-platform"
    }
  }
}
