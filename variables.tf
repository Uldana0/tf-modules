variable "service_account_id" {
  type = string
  default = "service-account"
}

variable "service_account_display_name" {
  type = string
  default = "Service Account"
}

variable "cluster_name" {
  type = string
}

variable "cluster_location" {
  type = string
  default     = "us-central1-c"
}

variable "initial_node_count" {
  type = number
  default = 1  
}

variable "disk_size_gb" {
  type = number
  default = 60
  
}
variable "project_id" {
  type = string
}