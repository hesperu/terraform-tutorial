variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

variable "location" {
  type    = string
  default = "asia-northeast1" # BigQueryのdataset location
}
