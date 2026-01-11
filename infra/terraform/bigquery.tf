resource "google_bigquery_dataset" "demo" {
  dataset_id = "tf_demo"
  location   = var.location

  description = "Terraform practice dataset"
  labels = {
    managed_by = "terraform"
    env        = "dev"
  }
}

resource "google_bigquery_table" "events" {
  dataset_id = google_bigquery_dataset.demo.dataset_id
  table_id   = "events"

  deletion_protection = false

  schema = jsonencode([
    { name = "event_time", type = "TIMESTAMP", mode = "REQUIRED" },
    { name = "user_id", type = "STRING", mode = "REQUIRED" },
    { name = "event_name", type = "STRING", mode = "REQUIRED" }
  ])
}
