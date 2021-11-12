variable "yandex_service_account_key_file" {}
variable "yandex_version" {}
variable "yandex_cloud_id" {}
variable "yandex_folder_id" {}
variable "yandex_subnet_id" {}
variable "yandex_image_id" {}
variable "yandex_zone" {
  default = "ru-central1-a"
}
variable "yandex_platform_id" {
  default = "standard-v2"
}

variable "public_key_path" {}
variable "private_key_path" {}

########################################
# terraform 2
########################################

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd8hmidjclau8156h3hg"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8vrf1liuevebger0an"
}
