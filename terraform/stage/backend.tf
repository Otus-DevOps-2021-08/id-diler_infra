terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
#      version = var.yandex_version
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-buckets"
    region     = "ru-central1-a"
    key        = "terraform-buckets/stage.tfstate"
    access_key = var.access_key
    secret_key = var.secret_key

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = var.yandex_service_account_key_file
  cloud_id                 = var.yandex_cloud_id
  folder_id                = var.yandex_folder_id
  zone                     = var.yandex_zone
}
