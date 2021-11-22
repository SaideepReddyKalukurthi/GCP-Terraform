terraform {
  backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "network-resources/state"    
  }
}