output "google_project" {
  value = data.google_project.project
}

output "artifact-registry-location" {
  value = "${google_artifact_registry_repository.repository.location}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.repository.repository_id}/"
}
