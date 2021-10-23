output "external_ip_address_app" {
  value = yandex_compute_instance.reddit-app.*.network_interface.0.nat_ip_address
}

output "external_ip_address_loadbalancer" {
  value = yandex_lb_network_load_balancer.lb.listener.*.external_address_spec
}
