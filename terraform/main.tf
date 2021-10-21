terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.35"
    }
  }
}

provider "yandex" {
  service_account_key_file = var.yandex_service_account_key_file
  cloud_id                 = var.yandex_cloud_id
  folder_id                = var.yandex_folder_id
}

resource "yandex_compute_instance" "reddit-app" {
  name        = "reddit-app-${count.index}"
  platform_id = var.yandex_platform_id
  zone        = var.yandex_zone
  count       = 2

  resources {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = var.yandex_image_id
    }
  }

  network_interface {
    subnet_id = var.yandex_subnet_id
    nat       = true
  }


  metadata = {
    ssh-keys = "yc-otus-appuser:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    #    host        = yandex_compute_instance.reddit-app.network_interface.0.nat_ip_address
    host        = self.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key)
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    script = "files/install_git.sh"
  }

  provisioner "remote-exec" {
    script = "files/install_ruby.sh"
  }

  provisioner "remote-exec" {
    script = "files/install_mongodb.sh"
  }

  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}
