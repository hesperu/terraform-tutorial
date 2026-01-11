terraform {
  backend "gcs" {
    bucket = "terraform-tutorial-ibuka"
    prefix = "bq-practice"
  }
}
