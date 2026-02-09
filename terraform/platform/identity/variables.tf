variable "admin_group_object_id" {
  description = "Object ID of IAM Platform Admins group"
  type        = string
}

variable "dev_group_object_id" {
  description = "Object ID of IAM Developers group"
  type        = string
}

variable "auditor_group_object_id" {
  description = "Object ID of IAM Auditors group"
  type        = string
}

variable "admin_rg_id" {
  description = "Resource ID of admin test resource group"
  type        = string
}

variable "dev_rg_id" {
  description = "Resource ID of dev test resource group"
  type        = string
}

variable "auditor_rg_id" {
  description = "Resource ID of readonly test resource group"
  type        = string
}
variable "subscription_id" {
  description = "Azure subscription ID Terraform should use"
  type        = string
}
