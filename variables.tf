#Google Cloud variables definitions
variable "project_id" {
  type = string
}

variable "project_number" {
  type = string
}

variable "project_region" {
  type = string
}

#helm deployments version to deploy variable definition
variable "futurae-helm-version" {
  type = string
}
