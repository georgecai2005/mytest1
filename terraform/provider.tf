terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">=3.0.0"

    }
    google = {
      source  = "hashicorp/google"
      version = ">=3.61.0"

    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">=3.61.0"

    }
  }
}

provider "google" {
  # Configuration options
  credentials = file("D:\\_CData\\Users\\Admin\\Downloads\\credible-art-418518-3ba1734ff618.json")
  project     = "credible-art-418518"
  region      = "northamerica-northeast1"
}
