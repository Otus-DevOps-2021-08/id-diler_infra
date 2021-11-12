terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.66.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-buckets"
    region     = "ru-central1"
    key        = "terraform_buckets/prod.tfstate"
    access_key = "zzN2AtH6jJ2LpbSN6lUf"
    secret_key = "SUnKNLJ25yo724l_QLi6CsLFHp2aUH3kWMuVZQC0"

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
