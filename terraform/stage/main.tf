module "app" {
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  app_disk_image   = var.app_disk_image
  subnet_id        = var.yandex_subnet_id
  source           = "../modules/app"
  database_url     = module.db.external_ip_address_db
}
module "db" {
  public_key_path  = var.public_key_path
  private_key_path = var.private_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.yandex_subnet_id
  source          = "../modules/db"
}
