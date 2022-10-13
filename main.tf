terraform {
  required_version = "~>1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.40.0"
    }
  }
}

provider "google" {
  project = "my-id"
  region  = "australia-southeast2-b"
}


data "google_project" "project" {
  project_id = var.project_id
}

resource "google_project_service" "artifact-service" {
  project                    = var.project_id
  service                    = "artifactregistry.googleapis.com"
  disable_dependent_services = true
}

resource "google_project_service" "cloud-run-service" {
  project                    = var.project_id
  service                    = "run.googleapis.com"
  disable_dependent_services = true
}

