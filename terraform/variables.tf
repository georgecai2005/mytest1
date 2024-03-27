variable "region" {}

variable "project_id" {}

variable "project_name" {}

variable "project_number" {}

variable "env" {}

variable "cluster" {}

variable "project-number" {}

variable "storage_edit_users" {}

variable "nccs-topic-options" {
  type = map(map(string))

  default = {
    np = {
      retention            = "1800s"
      retain_acked_message = false
      ack_deadline_seconds = "30"
    }
    pr = {
      retention            = "86400s"
      retain_acked_message = false
      ack_deadline_seconds = "60"
    }
  }
}
