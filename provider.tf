terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }
  backend "gcs" {
    bucket = "parisaiacweu"
    prefix = "gcp-solution-vpn/weu4"
  }
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

# install gcloud cli : https://cloud.google.com/sdk/docs/install