# id-diler_infra

## 7. Создание Terraform модулей для управления компонентами инфраструктуры.
Задание с ** + *



## 6. Декларативное описание в виде кода инфраструктуры YC, требуемой для запуска тестового приложения, при помощи Terraform.
### со звездочкой

проверяем terraform plan

запускаем terraform applay

проверяем по каждому external_ip_address_app:9292 и потом через external_ip_address_loadbalancer.address (в панели поочередно отключать или разом, дождаться перепроверки healthcheck после каждого отключения (от 1 до 300 секунд))

## 5. Подготовка базового образа VM при помощи Packer.
Проверка из папки packer
> packer validate -var-file=./variables.json ./ubuntu16.json

Запуск из папки packer
> packer build -var-file=./variables.json ./ubuntu16.json

### Bake
Done



## 4. Практика управления ресурсамиyandex cloud через YC.

testapp_IP = 84.201.156.194

testapp_port = 9292



## 3. Запуск VM в Yandex Cloud, управление правилами фаервола, настройка SSH подключения, настройка SSH подключения через Bastion Host, настройка VPN сервера и VPN-подключения.

### Самостоятельное задание
> ssh -i ~/.ssh/yc-otus-appuser -A yc-otus-appuser@62.84.119.155 -t ssh 10.128.0.16

bastion_IP = 62.84.119.155

someinternalhost_IP = 10.128.0.16

### Дополнительное задание
> в "~/.ssh/config" прописываем
> > Host connect-to-yc-otus
> >
> > Hostname 10.128.0.16
> >
> > User yc-otus-appuser
> >
> > IdentityFile /Users/dlr/.ssh/yc-otus-appuser
> >
> > ForwardAgent yes
> >
> > ProxyCommand ssh -W %h:%p yc-otus-appuser@62.84.119.155
>
>
> и после можем соединяться из консоли
> > ssh connect-to-yc-otus
