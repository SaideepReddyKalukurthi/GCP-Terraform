terraform {
  backend "gcs" {
      bucket = "terraform-gcs-backend-state"
      prefix = "service-account/state"    
  }
}
