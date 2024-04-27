provider "google" {
  project    = "uldana"
  region     = "us-central1-c"
}

resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.cluster_location
  initial_node_count = var.initial_node_count

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  
  node_config {
    disk_size_gb = var.disk_size_gb
  }
}